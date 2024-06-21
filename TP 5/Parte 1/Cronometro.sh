#!/bin/bash

echo "Cronómetro"
start=0
end=0

while true; do
  echo "Selecciona una opción:"
  echo "1) Iniciar"
  echo "2) Detener"
  echo "3) Reiniciar"
  echo "4) Salir"
  read opcion

  if [ $opcion -eq 1 ]; then
    start=$(date +%s)
    echo "Cronómetro iniciado."
  elif [ $opcion -eq 2 ]; then
    end=$(date +%s)
    elapsed=$((end - start))
    echo "Tiempo transcurrido: $elapsed segundos."
  elif [ $opcion -eq 3 ]; then
    start=0
    end=0
    echo "Cronómetro reiniciado."
  elif [ $opcion -eq 4 ]; then
    break
  else
    echo "Opción no válida."
  fi
done