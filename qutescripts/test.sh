#!/bin/bash

###export QUTE_SELECTED_TEXT="hi233"

###echo "open -t https://www.dict.cc/?s=$QUTE_SELECTED_TEXT" >> "$QUTE_FIFO"

###echo "hint ">>"$QUTE_FIFO"
#echo "click-element css textarea">>"$QUTE_FIFO"
#echo "fake-key how old are you">>"$QUTE_FIFO"
echo "hint inputs --first">>"$QUTE_FIFO"
echo "fake-key 'what is your name'<Return>">>"$QUTE_FIFO"
echo "hint button_poe_send --first">>"$QUTE_FIFO"
sleep 10s
echo "fake-key 'who is your dady'<Return>">>"$QUTE_FIFO"
echo "hint button_poe_send --first">>"$QUTE_FIFO"
#echo "fake-key <Return>">>"$QUTE_FIFO"


##:spawn --userscript /home/ljq/qutescripts/test.sh





# Replace with the path to the file you want to monitor
file_path="path/to/your/file"

last_modified_time=""

while true; do
    current_modified_time=$(stat -c %Y "$file_path")

    if [[ "$current_modified_time" != "$last_modified_time" ]]; then
        last_modified_time="$current_modified_time"
        cat "$file_path"
    fi

    sleep 10
done

