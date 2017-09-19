name=$1
slideurl=http\\://www.porganized.com/User-Access-Services
docurl=https\\://github.com/organisciak/User-Access-Services/blob/master/
pandoc --slide-level 2 -s -t revealjs -V theme=white -V transition=fade -V slideNumber=true -V history=true --mathjax $name.md -o $name.html
# Renew TOC
ls *md | perl -pe "s:^(\d+)-(.*)\.md:(@) \2\n\t+ [Slides]($slideurl/\1-\2.html) \([Docs]($docurl/\1-\2.md)\):g" | pandoc -f markdown -t html -o index.html
