#!/bin/bash

PS3="WHICH OF THE TWO SCRIPT WOULD YOU LIKE TO RUN ? "
select script in "folder_organiser.sh" "cruft_remover.sh"; do
	break
done

echo  "...NOW RUNING $script ..."
./$script
