#!/bin/bash
usuario=$(whoami)
function start_setup() {
    echo -e "Bienvenido a Witane..."
    echo -e "Estableciendo su pc... (1/2)"
    echo -e "[*] Info : ruta ej. /media/$usuario/ESD-USB/comandos/"
    echo -e "Ruta absoluta de sus comandos: "; read CommandsLocation
    cp $CommandsLocation* /usr/bin/
    chmod +x /usr/bin/*    
}
if [ $usuario != 'root' ]
then
    echo -e "[!] Debes ejecutar Witane como super-usuario(root)"
else
    start_setup
fi