#!/bin/bash

echo "Obtener el clima actual de una ciudad"

read -p "Introduce el nombre de la ciudad: " ciudad
api_key="60d5dd1fa9e5486687c33747242006"
url="http://api.weatherapi.com/v1/current.json?key=$api_key&q=$ciudad"

echo "Obteniendo datos del clima..."

curl -s $url | jq '.current | {temp_c: .temp_c, condicion: .condition.text, viento_kph: .wind_kph, humedad: .humidity}'