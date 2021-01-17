#!/bin/bash

# Paths #####################################################################
PATH_TMP="./../tmp"

# Folders ###################################################################
FOLDER_DATA=("data")
FOLDER_LOGS=("logs")

# Functions
function RenderLine {
	printf "%78s\n" | tr ' ' =
}

function CleanData {
    for i in "${FOLDER_DATA[@]}"; do rm -rf $PATH_TMP/$i; done
    echo -e "Docker Data folder/s removed"
}

function CleanLogs {
    for i in "${FOLDER_LOGS[@]}"; do rm -rf $PATH_TMP/$i; done
    echo -e "Docker Logs folder/s removed"
}

# Main ######################################################
if [[ $1 == "-f" ]];
then
    # Forced operations
    CleanData
    CleanLogs
else
    # Interactive operations
    echo -e
    RenderLine
    echo -e "= Docker Cleanup"
    echo -e "= This script will cleanup the Docker generated 'data' and 'logs' folders"
    RenderLine

    read -p "* Remove Docker Data Folder/s [Yes/no]? " -r
    if [[ $REPLY == "Yes" ]];then CleanData;fi

    read -p "* Remove Docker Logs Folder/s [Yes/no]? " -r
    if [[ $REPLY == "Yes" ]];then CleanLogs; fi
fi
