#!/bin/bash
#Example folder for garmin device,backup folder and folder for export gpx file
device=/Volumes/GARMIN/Garmin/Activities
backup=~/Documents/Trackdata/Backup
export=~/Documents/Fog\ of\ World/Import
#find new file in device folder
target=($(diff -rq $device $backup | grep "Only in $device: " | sed 's/^.*\(: *\)//' ))
#2. function for convert .fit into .gpx

fit2gpx () {
    fullname=$(basename -- "$1")
    filename="${fullname%.*}"
    gpsbabel -i garmin_fit -f "$device/$filename".fit -o gpx -F "$export/$filename".gpx
}
if ${target[0]};then
    echo "Don't have any new file."
else
    for files in "${target[@]}"; do
        fit2gpx $files $device $export
        cp "$device/$files" "$backup/$files"
    done
    echo "All files have been updated."
fi
