ls | grep -P "^\d.*md$" | parallel ./build.sh {.}
