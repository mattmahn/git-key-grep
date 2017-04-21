grep -vE -e '^[[:space:]]*#' regexps | git grep -E -f -
