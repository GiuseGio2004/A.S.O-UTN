#!/bin/bash

echo "Introduce el primer número:"
read num1
echo "Introduce el segundo número:"
read num2

echo "Elige la operación: suma, resta, multiplicación, división"
read operacion

case $operacion in
    suma)
        resultado=$((num1 + num2))
        echo "El resultado de la suma es: $resultado"
        ;;
    resta)
        resultado=$((num1 - num2))
        echo "El resultado de la resta es: $resultado"
        ;;
    multiplicación)
        resultado=$((num1 * num2))
        echo "El resultado de la multiplicación es: $resultado"
        ;;
    división)
        if [ $num2 -ne 0 ]; then
            resultado=$((num1 / num2))
            echo "El resultado de la división es: $resultado"
        else
            echo "Error: División por cero no permitida"
        fi
        ;;
    *)
        echo "Operación no válida"
        ;;
esac