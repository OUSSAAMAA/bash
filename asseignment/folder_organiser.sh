#!/bin/bash

read -p "type path to a folder you wish to organize : " path
cd $path

while read file; do
	case $file in
		*.jpg | *.jpeg |*.png)
		if [[ -d images ]]; then
			mv $file images
		else
			mkdir images && mv $file images
		fi
		;;
		*.doc | *.docx| *.txt | *.pdf)
                if [[ -d documents ]]; then
                        mv $file documents
                else
                        mkdir documents && mv $file documents
                fi
                ;;
		*.xls | *.xlsx | *.csv)
                if [[ -d spreadsheets ]]; then
                        mv $file spreadsheets
                else
                        mkdir spreadsheets && mv $file spreadsheets
                fi
                ;;
		*.sh)
                if [[ -d scripts ]]; then
                        mv $file scripts
                else
                        mkdir scripts && mv $file scripts
                fi
                ;;
		*.zip | *.tar | *.tar.gz | *.tar.bz2)
		                if [[ -d archives ]]; then
                        mv $file archives
                else
                        mkdir archives && mv $file archives
                fi
                ;;

                *.pptx | *.ppt)
                                if [[ -d presentations ]]; then
                        mv $file presentations
                else
                        mkdir presentations && mv $file presentations
                fi
                ;;

                *.mp3)
                                if [[ -d audio ]]; then
                        mv $file audio
                else
                        mkdir audio && mv $file audio
                fi
                ;;

                *.mp4)
                                if [[ -d video ]]; then
                        mv $file video
                else
                        mkdir video && mv $file video
                fi
                ;;

		*)
	esac
done < <(ls)
