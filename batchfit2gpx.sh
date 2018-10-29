#!/bin/bash

#function for convert .fit into .gpx for current folder





fit2gpx () {
    # Usage: convert_gpx.sh <FIT filename>
    # Should works whether you include the .FIT extension or not.
    fullname=$(basename -- "$1")
    filename="${fullname%.*}"
    gpsbabel -i garmin_fit -f "$filename".fit -o gpx -F "$filename".gpx
}

shopt -s nullglob
for files in *.fit; do
    fit2gpx $files
done
