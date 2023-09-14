#!/bin/bash

# Tiempo en segundos que deseas que se ejecuten los comandos
duracion=5

# Calcula la hora de finalizaci  n en segundos desde el inicio del script
finalizacion=$((SECONDS + duracion))

# Ejecuta los comandos constantemente hasta que se alcance la hora de finalizaci  n
while [ $SECONDS -lt $finalizacion ]; do
    # Ejecuta los comandos
    echo 1 > /dev/usrled3
    sleep 0.1
    echo 0 > /dev/usrled3

    # Espera un segundo antes de la pr  xima iteraci  n
    sleep 0.1
done

# Fin del script
echo "Ejecuci  n finalizada despu  s de $duracion segundos."
