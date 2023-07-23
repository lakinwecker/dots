#!/home/lakin/.asdf/shims/python
from collections import defaultdict
from typing import List
import asyncio
import os
import socket
import subprocess
import sys
from dataclasses import dataclass

DEBUG = False
StatusMap = defaultdict[int, bool]
occupied: StatusMap = defaultdict(bool)
focused: StatusMap = defaultdict(bool)

def log(target: str, message: str):
    if not DEBUG: return
    open(f'/home/lakin/tmp/eww-debug-{target}.log', 'a').write(f'{message}\n')

log('status', '-------------------------------------------------------------------------------')
log('event', '-------------------------------------------------------------------------------')
log('socket', '-------------------------------------------------------------------------------')

def workspaces_init():
    global DEBUG
    if "--verbose" in sys.argv:
        DEBUG = True

    occupied_workspaces = subprocess.check_output("/usr/bin/hyprctl workspaces | grep ID | awk '{print $3}'", shell=True)
    for workspace_id in occupied_workspaces.split():
        occupied[int(workspace_id.strip().decode("utf-8"))] = True

    focused_workspaces = subprocess.check_output("""/usr/bin/hyprctl monitors | grep -B 5 "focused: yes" | awk 'NR==1{print $3}'""", shell=True)
    for workspace_id in focused_workspaces.split():
        focused[int(workspace_id.strip().decode("utf-8"))] = True

    if DEBUG: DEBUG_both()

workspaces = [
    (1, "", ""),
    (2, "", ""),
    (3, "", ""),
    (4, "", ""),
    (5, "", ""),
    (6, "", ""),
    (7, "", ""),
    (8, "", ""),
    (9, "", ""),
    (10, "", ""),
    (11, "", ""),
    (12, "", ""),
    (13, "", ""),
    (14, "", ""),
    (15, "", ""),
    (16, "", ""),
]
"""workspaces = [
    (1, ""),
    (2, ""),
    (3, ""),
    (4, ""),
    (5, "󰇮"),
    (6, "󰞋"),
    (7, ""),
    (8, ""),
    (9, ""),
    (10, ""),
    (11, "󰋍"),
    (12, "󰭹"),
    (13, "󰓓"),
    (14, ""),
    (15, ""),
    (16, ""),
]
"""

def workspaces_view():
    buttons: List[str] = []
    for id, occupied_icon, focused_icon in workspaces:
        focus_class = " focused" if focused[id] else ""
        occupied_class = " occupied" if occupied[id] else ""
        icon =  focused_icon if focused[id] else occupied_icon
        buttons.append(f"""(button :onclick "hyprctl dispatch exec '~/.config/hypr/workspace {id}'" :onrightclick "hyprctl dispatch workspace {id} && $HOME/.config/hypr/default_app" :class "workspace{focus_class}{occupied_class}" "{icon}")""")
    # echo 	"(button :onclick \"bspc desktop -f $ws1\"	:class	\"$un$o1$f1\"	\"$ic_1\") (button :onclick \"bspc desktop -f $ws2\"	:class \"$un$o2$f2\"	 \"$ic_2\") (button :onclick \"bspc desktop -f $ws3\"	:class \"$un$o3$f3\" \"$ic_3\") (button :onclick \"bspc desktop -f $ws4\"	:class \"$un$o4$f4\"	\"$ic_4\") (button :onclick \"bspc desktop -f $ws5\"	:class \"$un$o5$f5\" \"$ic_5\")  (button :onclick \"bspc desktop -f $ws6\"	:class \"$un$o6$f6\" \"$ic_6\"))"
    message = f"""(box :class "works" :orientation "h" :spacing 5 :space-evenly "false" {" ".join(buttons)})"""
    print(message, flush=True)
    log('output', f"--------------------------------------------------------------------\n{message}")

async def async_hyprctl(cmd:str):
    p = await asyncio.create_subprocess_shell(f'hyprctl {cmd}', stdout=asyncio.subprocess.PIPE, stderr=asyncio.subprocess.PIPE)
    await p.wait()
    resp = (await p.stdout.read()).decode('utf-8').strip()
    return resp

class EventListener:
    def start(self):
        with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as sock:
            sock.connect(f"/tmp/hypr/{os.getenv('HYPRLAND_INSTANCE_SIGNATURE')}/.socket2.sock")
            yield "connect"
            while True:
                data = sock.recv(1024)
                if not data:
                    break
                yield data.decode('utf-8')


    async def async_start(self):
        reader, writer = await asyncio.open_unix_connection(f"/tmp/hypr/{os.getenv('HYPRLAND_INSTANCE_SIGNATURE')}/.socket2.sock")
        yield "connect"
        while True:
            data = await reader.readline()
            if not data:
                break
            yield data.decode('utf-8')

@dataclass
class ConnectEvent:
    pass

@dataclass
class FocusedMonitorEvent:
    name: str
    monitor: str
    workspace: int

@dataclass
class WorkspaceEvent:
    name: str
    workspace: int

@dataclass
class CreateWorkspaceEvent:
    name: str
    workspace: int

@dataclass
class DestroyWorkspaceEvent:
    name: str
    workspace: int

@dataclass
class UnknownEvent:
    name: str
    args: str


Event = ConnectEvent | FocusedMonitorEvent | WorkspaceEvent | DestroyWorkspaceEvent | CreateWorkspaceEvent | UnknownEvent

def parse_event(event: str) -> Event:
    event = event.strip()
    if event == "connect":
        return ConnectEvent()

    name, args = event.split(">>")
    if name == "focusedmon":
        monitor, workspace = args.strip().split(",")
        log('event', f'[EVENT] FocusedMonitorEvent({name}, {monitor}, {workspace})')
        return FocusedMonitorEvent(name=name, monitor=monitor, workspace=int(workspace))
    elif name == "workspace":
        workspace = args.strip()
        log('event', f'[EVENT] WorkspaceEvent({name}, {workspace})')
        return WorkspaceEvent(name=name, workspace=int(workspace))
    elif name == "createworkspace":
        workspace = args.strip()
        log('event', f'[EVENT] CreateWorkspaceEvent({name}, {workspace})')
        return CreateWorkspaceEvent(name=name, workspace=int(workspace))
    elif name == "destroyworkspace":
        workspace = args.strip()
        log('event', f'[EVENT] DestroyWorkspaceEvent({name}, {workspace})')
        return DestroyWorkspaceEvent(name=name, workspace=int(workspace))

    return UnknownEvent(name=name, args=args)



def DEBUG_both():
    global occupied
    global focused
    message = ""
    message += f"Status: "
    for id, _, _ in workspaces:
        if focused.get(id, False):
            message += "(●)"
        elif occupied.get(id, False):
            message += "(-)"
        else:
            message += "( )"
    log('status', message)

def workspaces_focus(workspace_id: int):
    global focused
    focused = defaultdict(bool)
    focused[workspace_id] = True
    log('event', f'[EVENT] Activating workspace {workspace_id})')
    DEBUG_both()
    workspaces_occupy(workspace_id)

def workspaces_occupy(workspace_id: int):
    global occupied
    occupied[workspace_id] = True
    log('event', f'[EVENT] Occupying workspace {workspace_id})')
    DEBUG_both()

def workspaces_unoccupy(workspace_id: int):
    global occupied
    occupied[workspace_id] = False
    log('event', f'[EVENT] Removing workspace {workspace_id})')
    DEBUG_both()

async def main():
    global focused
    global occupied
    global DEBUG
    if "--debug" in sys.argv:
        DEBUG = True

    workspaces_init()
    workspaces_view()
    event_listener = EventListener()
    async for event_string in event_listener.async_start():
        event = parse_event(event_string)
        log("socket", f"[SOCKET] Recieved event {event_string}")
        match event:
            case FocusedMonitorEvent(_, _, workspace_id):
                workspaces_focus(workspace_id)
            case WorkspaceEvent(_, workspace_id):
                workspaces_focus(workspace_id)
            case CreateWorkspaceEvent(_, workspace_id):
                workspaces_occupy(workspace_id)
            case DestroyWorkspaceEvent(_, workspace_id):
                workspaces_unoccupy(workspace_id)
            case UnknownEvent(name, args):
                log("socket", f"[SOCKET] Unknown event {name} -> {args}")
                pass
        workspaces_view()

if __name__ == "__main__":
    asyncio.run(main())
