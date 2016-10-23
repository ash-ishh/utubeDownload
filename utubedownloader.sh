#!/usr/bin/env bash
#Author : Ash-Ishh..

declare -a link;
read input;
i=0;


for word in $input
do
    link[$i]="$word";
    i=$((i+1));
done

if [[ ${link[1]} = "a" ]]; then
    cd $HOME/Music;
    youtube-dl -f m4a ${link[0]};
else
    cd $HOME/Videos;
    youtube-dl ${link[0]};
fi

exit;         
