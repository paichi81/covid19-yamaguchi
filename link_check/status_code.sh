curl --head $1 2>/dev/null| head -n 1 |sed -r "s/.* ([0-9]*) .*/\1/"
