name=$1
pandoc --slide-level 2 -s -t revealjs -V theme=white -V transition=fade -V slideNumber=true -V history=true --mathjax $name.md -o $name.html
# Renew TOC
ls *md | perl -pe "s:^(\d+)-(.*)\.md:(@) [\2](\1-\2.html):g" | pandoc -f markdown -t html -o index.html
echo "https://github.com/organisciak/User-Access-Services/blob/master/$name.md http://www.porganized.com/User-Access-Services/$name.html"
