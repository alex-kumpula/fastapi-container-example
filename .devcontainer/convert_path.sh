#!/bin/bash
s=$1
echo "Path being converted: $s"
s=${s/A:/a}
s=${s/B:/b}
s=${s/C:/c}
s=${s/D:/d}
s=${s/E:/e}
s=${s/F:/f}
s=${s/G:/g}
s=${s/H:/h}
s=${s/I:/i}
s=${s/J:/j}
s=${s/K:/k}
s=${s/L:/l}
s=${s/M:/m}
s=${s/N:/n}
s=${s/O:/o}
s=${s/P:/p}
s=${s/Q:/q}
s=${s/R:/r}
s=${s/S:/s}
s=${s/T:/t}
s=${s/U:/u}
s=${s/V:/v}
s=${s/W:/w}
s=${s/X:/x}
s=${s/Y:/y}
s=${s/Z:/z}
s=${s/:}
s=${s//\\//}
s="/${s}"
echo "Result: $s"
s="export LOCAL_WORKSPACE_FOLDER=${s}"
echo $s >> /etc/profile
echo $s >> /etc/bash.bashrc
echo $s >> /etc/environment
