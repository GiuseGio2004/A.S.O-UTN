#!/bin/bash

# Generar un número aleatorio entre 1 y 100
numero_aleatorio=$((RANDOM % 100 + 1))
intento=0

echo "Adivina el número entre 1 y 100:"

while true; do
    read -p "Introduce tu intento: " intento
    if (( intento < numero_aleatorio )); then
        echo "Demasiado bajo"
    elif (( intento > numero_aleatorio )); then
        echo "Demasiado alto"
    else
        echo "¡Felicidades! Adivinaste el número $numero_aleatorio."
        break
    fi
done