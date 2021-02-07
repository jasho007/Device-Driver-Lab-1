#!/bin/bash

#Exercise 3 - Shell program to download a webpage, run repeatedly, analyze performance of downloading.
#CED17I034

printf "starting script for downloading website ...\n\n"

# URL of the website you wanted to download
URL=https://www.youtube.com/
# wget is used to download the web contents
wget $URL


printf "ending script..\n"

exit