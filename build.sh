name=$1
pandoc --slide-level 2 -s -t revealjs -V theme=white -V transition=fade -V slideNumber=true -V history=true --mathjax $name.md -o docs/$name.html
