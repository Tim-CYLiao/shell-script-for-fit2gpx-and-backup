#Manual
These scripts are simple tool for .fit file(usually in Garmin device) batch convert and backup.
It can batch convert .fit to gpx, which can manually upload for other application, such as "Fog of World".
###Current version is the only test on Mac, haven't test on the other operating system.

The terminal instruction as follow(all code are executed in terminal.app):
>1.Install Homebrew:
    
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

>2.Install GPSBabel (for fit to gpx convertinge:
    
    brew install gpsbabel

>3.Set the working directory to fit file folder(also can be the folder which stores backup file):
    
    cd path

    #example for path: ~/Documents/fit_folder

>4.Put .sh files(both Tracks_backup_converter.sh and batchfit2gpx.sh) into step 3's directory.

>5-1.For .fit to gpx batch converting,execute batchfit2gpx.sh:
    
    ./batchfit2gpx.sh

>5-2.For garmin device backup and convert,modified device, backup, export directories by vim editor manually:

    vim Tracks_backup_converter.sh
    example,modify line 3 to line 5 if necessary:
    
    device=/Volumes/GARMIN/Garmin/Activities
    backup=~/Documents/Trackdata/Backup
    export=~/Documents/Fog\ of\ World/Import
    #(type 'i' to insert,the type "esc"key ,"shift"key+':' then "w"+"q" to save and quit when finish)

>6-2.Executes Tracks_backup_converter.sh:
    
    ./Track_backup_converter.sh

    

    

    

Reference:
>1.GPSBabel(An powerful tool for track-relating files converting):
[Official website](https://www.gpsbabel.org)

>2.Homebrew(An convenient tool for application/package installing ):
[Official website](https://brew.sh)

>3. StevenMaude:
[link for github](https://gist.github.com/StevenMaude/b4ee336750a3fdbaaf67)
