#!/bin/bash
usuario=$(whoami)
function start_setup() {
    echo -e "Bienvenido a Witane..."
    echo -e "Estableciendo su pc... (1/1)"
    echo -e "[*] Info : ruta ej. /media/$usuario/ESD-USB/comandos/"
    echo -e "Ruta absoluta de sus comandos: "; read CommandsLocation
    cp $CommandsLocation* /usr/bin/
    chmod +x /usr/bin/*
    echo -e "Quieres instalar el dev-packet (paquete de desarrollador)?? [y/n]"; read devPctI
    if [ $devPctI == "y" ]
    then
        sudo apt install code terminator
    elif [ $devPctI == "n" ]
        echo -e "[*] Entendido... Cancelando la instalacion de programas..."
    else
        echo -e "Err: Opcion no existe"
}
if [ $usuario != 'root' ]
then
    echo -e "[!] Debes ejecutar Witane como super-usuario(root)"
else
    start_setup
    echo -e "[*] Witane ha instalado todo correctamente"
fi
