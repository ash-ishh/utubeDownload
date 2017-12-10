#!/usr/bin/env bash
#Author : Ash-Ishh..

declare -a link;
read input;

# link[1] -> url
# link[2] -> a or v
# link[3] -> quality
i=0;
for word in $input
do
    link[$i]="$word";
    i=$((i+1));
done


#quality
#720 -> 22
#1800 -> 37
#default 480 -> 37 18maybe
quality=18;

if [[ ${link[2]} = "720" ]]; then
    quality=22
fi
if [[ ${link[2]} = "1800" ]]; then
    quality=37
fi


if [[ ${link[1]} = "a" ]]; then
    cd $HOME/Music;
    #youtube-dl -f m4a ${link[0]};
    youtube-dl --extract-audio --audio-format mp3 ${link[0]};

else
    cd $HOME/Videos/YoutubeDl;
    youtube-dl -f $quality ${link[0]};
fi
exit;
