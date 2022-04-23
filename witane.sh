#!/bin/bash
usuario=$(whoami)
function start_setup() {
    echo -e "Bienvenido a Witane..."
    echo -e "Quieres establecer comandos personalizados?? [y/n]"; read qCommandsEjecution
    if [ $qCommandsEjecution == "y" ]
    then
        echo -e "Estableciendo su pc... (1/2)"
        #echo -e "[*] Info : ruta ej. /media/$usuario/ESD-USB/comandos/"
        #echo -e "Ruta absoluta de sus comandos: "; read CommandsLocation
        #cp $CommandsLocation* /usr/bin/
        #chmod +x /usr/bin/*
    elif [ $qCommandsEjecution == "n" ]
    then
        echo -e "[*] Fase de comandos finalizada..."
    else
        echo -e "Err: Opcion no existe"
    fi
    #Programs Install
    echo -e "Developer Packet: "
    echo -e "* Visual Studio Code     * Terminator"
    echo -e "Quieres instalar el dev-packet (paquete de desarrollador)?? [y/n]"; read devPctI
    if [ $devPctI == "y" ]
    then
        echo -e "Estableciendo su pc... (2/2)"
        #sudo apt install code terminator
    elif [ $devPctI == "n" ]
    then
        echo -e "[*] Fase de instalacion de paquetes finalizada..."
    else
        echo -e "Err: Opcion no existe"
    fi
}


if [ $usuario != 'root' ]
then
    echo -e "[!] Debes ejecutar Witane como super-usuario(root)"
else
    start_setup
    echo -e "[*] Witane ha instalado todo correctamente"
fi
