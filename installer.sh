echo -e "\e[1;34m==================================\e[0m"
echo " ___  ___   __  __  ____  _  ____  
| __||   \ |  \/  ||_  / / ||__  | 
| _| | |) || |\/| | / /  | |  / /  
|_|  |___/ |_|  |_|/___| |_| /_/  
"
echo -e "\e[1;34m| Starting...
| Create backup.me file to backup server file
| For better performance use Hacker Plan Repl
| Supported version: 1.16.5\e[0m"
echo -e "\e[1;34m==================================\e[0m"
read -r -p "
Could find server.sh
1) Minecraft Java [PaperMC]
2) Minecraft Java [Purpur]
3) Minecraft Java [Vanila]
4) Exit
Choose a Number from 1 to 4.
> " response
if [[ "$response" =~ ^([1][eE][sS]|[1])$ ]]
then
    wget https://raw.githubusercontent.com/FDMZ17/replit-minecraft-server-file/main/paper/server.sh
    bash server.sh
fi    

if [[ "$response" =~ ^([2][eE][sS]|[2])$ ]]
then
    wget https://raw.githubusercontent.com/FDMZ17/replit-minecraft-server-file/main/purpur/server.sh
    bash server.sh
fi

if [[ "$response" =~ ^([3][eE][sS]|[3])$ ]]
then
    wget https://raw.githubusercontent.com/FDMZ17/replit-minecraft-server-file/raw/main/vanila/server.sh
    bash server.sh
fi


if [[ "$response" =~ ^([4][eE][sS]|[4])$ ]]
then
    exit
fi
