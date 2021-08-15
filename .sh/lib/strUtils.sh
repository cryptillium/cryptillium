# function to return the index of a substring
# usage: indexOf (< target string >,  <substring>)
indexOf() { 
  x="${1%%$2*}"
  [[ "$x" = "$1" ]] && echo -1 || echo "${#x}"
}


export -f indexOf