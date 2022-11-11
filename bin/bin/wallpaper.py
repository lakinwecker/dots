#!/usr/bin/env python

import os
command = "feh --no-fehbg --bg-fill \"`head -n 1 /tmp/wallpapers.txt`\""
os.system(command)
