#!/bin/bash
cd /home/container

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/home/container$ ${MODIFIED_STARTUP}"
echo "



████████╗░█████╗░██╗░██████╗░░█████╗░███╗░░██╗░█████╗░██████╗░███████╗░██████╗
╚══██╔══╝██╔══██╗██║██╔════╝░██╔══██╗████╗░██║██╔══██╗██╔══██╗██╔════╝██╔════╝
░░░██║░░░███████║██║██║░░██╗░██║░░██║██╔██╗██║██║░░██║██║░░██║█████╗░░╚█████╗░
░░░██║░░░██╔══██║██║██║░░╚██╗██║░░██║██║╚████║██║░░██║██║░░██║██╔══╝░░░╚═══██╗
░░░██║░░░██║░░██║██║╚██████╔╝╚█████╔╝██║░╚███║╚█████╔╝██████╔╝███████╗██████╔╝
░░░╚═╝░░░╚═╝░░╚═╝╚═╝░╚═════╝░░╚════╝░╚═╝░░╚══╝░╚════╝░╚═════╝░╚══════╝╚═════╝░

                           Powered by TAIGO.xyz



Site: https://nodes.taigocraft.ru/
Panel: https://panel.taigocraft.ru/
Client: https://client.taigocraft.ru/
"
# Run the Server
${MODIFIED_STARTUP}
