#! /bin/bash
read -p "Ingrese el numero de tareas a eliminar: " numero

lineasDelArchivo=$(wc -l < tareasDiarias.txt)
eliminarDesde=$((lineasDelArchivo-numero+1))

sed -i ''$eliminarDesde',$d' tareasDiarias.txt
