#!/bin/bash

echo "Obtener el clima actual de una ciudad"

read -p "Introduce el nombre de la ciudad: " ciudad
api_key="60d5dd1fa9e5486687c33747242006"
url="http://api.weatherapi.com/v1/current.json?key=$api_key&q=$ciudad"

echo "Obteniendo datos del clima..."

temp_actual=$(curl -s $url | jq '.current.temp_c')

echo "La temperatura actual en $ciudad es de $temp_actual°C."

# Pregunta al usuario si desea cambiar la temperatura
read -p "¿Deseas cambiar la temperatura? (s/n): " cambiar_temp

if [ "$cambiar_temp" == "s" ]; then
  read -p "Introduce la nueva temperatura: " nueva_temp
  echo "La temperatura en $ciudad ha sido ajustada a $nueva_temp°C."
else
  echo "La temperatura en $ciudad se mantiene en $temp_actual°C."
fi
