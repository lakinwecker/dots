let configs = [
\  "plugins",
\  "general",
\  "ui",
\  "commands",
\  "plugin-settings",
\]
for file in configs
  let x = expand("~/.config/nvim/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor
