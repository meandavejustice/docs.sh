 #!/bin/sh
 # Open Docs for anything on dochub or openapi.
dochub="css javascript html dom jquery php python"

#readthedocs
if [ $1 == "-r" ]; then open "https://readthedocs.org/projects/$2/" && exit
fi

#justdochub
if [ -z "$1" ]; then open "http://dochub.io" && exit
fi

[[ $dochub =~ $1 ]] && dh='yes' || dh='no';

#default to dochub for fe terms
#everything else goes to overapi
if [ $dh == 'no' ];then
    echo opening $1 docs
    open "http://overapi.com/$1"
else
    echo opening $1 docs
    open "http://dochub.io/#$1/$2"
fi