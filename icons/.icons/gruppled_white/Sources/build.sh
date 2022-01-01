#!/bin/bash
for a in *.conf; do
	echo "- $a";
	xcursorgen $a > ../cursors/`echo $a | cut -f 1 -d'.'`;
done;
