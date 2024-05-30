#!/bin/bash
# colors
PURPLE='\033[1;35m'
NO_COLOR='\033[0m'
BOLD_RED='\033[1;31m'
BOLD_GREEN='\033[1;32m'

app_file=$1
if [[ -z "$app_file" ]]; then
	echo -e "${BOLD_RED}Oops!${NO_COLOR}"
	# echo -e "I wanna help you but at least give me the ${BOLD_GREEN}app list${NO_COLOR} you want to install"
	echo -e "It would be great if u gimme the ${BOLD_GREEN}app list${NO_COLOR} you want to install :3"
	exit 1
else
	echo -e "${PURPLE}╔════════════════════════╗${NO_COLOR}"
	echo -e "${PURPLE}║ app installer launched ║${NO_COLOR}"
	echo -e "${PURPLE}╚════════════════════════╝${NO_COLOR}"

	echo ""
	echo -e "___ Apps list _____________"
	echo -e "|"
	while IFS= read -r app; do
		if pacman -Qq "$app" &> /dev/null; then
			echo -e "|  $app - ${BOLD_GREEN}installed${NO_COLOR}"
		else
			echo -e "|  $app - ${BOLD_RED}not installed${NO_COLOR}"	
		fi
	done < "$app_file"
	echo -e "|__________________________"
	echo ""
fi

install_app() {
    app=$1
    echo -en "Do you want to install ${PURPLE}$app${NO_COLOR}? (Y/n): "
    read response < /dev/tty
    if [[ "$response" == "y" || "$response" == "Y" || -z "$response" ]]; then
        echo -e "Installing ${PURPLE}$app${NO_COLOR}..."
        if sudo pacman -S --noconfirm "$app" > /dev/null; then
            echo -e "${BOLD_GREEN}Success:${NO_COLOR} ${PURPLE}$app${NO_COLOR} installed successfully."
        else
            echo -e "${BOLD_RED}Error:${NO_COLOR} Failed to install ${PURPLE}$app${NO_COLOR}."
        fi
    else
        echo -e "${BOLD_RED}Skipped:${NO_COLOR} ${PURPLE}$app${NO_COLOR} was not installed."
    fi
}

while IFS= read -r app; do
	if ! pacman -Qq "$app" &> /dev/null; then
		install_app "$app"
	fi
done < "$app_file"
