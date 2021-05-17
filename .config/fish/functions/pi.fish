#install pacman -S with search
function pi --description "Install Arch Linux Package with search."
    set -l search (pacman -Q | fzf | awk -F' +' '{ print $1 }')
    
    if [ -z "$search" ]
        echo "No search result found."
    else
        sudo pacman -Syu $search
    end
end
