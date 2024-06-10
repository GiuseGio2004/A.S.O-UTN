1.A) En el código Python sinhilos.py el tiempo de ejecución es de 5 segundos, con variaciones de 5,1 segundos.

Sinhilos.py
5.16918 segundos
5.16918 segundos

Mientras qué el código conhilos.py tarda un total de 4 segundos sin variaciones.

Conhilos.py
4.05238 segundos
4.06590 segundos

B) Mis compañeros también llegaron al mismo valor en cada uno de los códigos, aunque según uno de ellos el código sinhilos.py le llegó a dar un total de 6,2 segundos.

C) El código suma_resta.py en las filas 11,12,19,20 comentadas da siempre 0 cómo valor final y le toma 0 segundos en hacerlo, 
mientras qué al descomentar dichas filas da cómo resultado números negativos o positivos variados y un total de 2 o 3 segundos de ejecución.
Al descomentar las líneas dentro de cada función, se introduce una pausa (for i in range(1000): pass) en cada iteración de los bucles que modifican el acumulador. 
Estas pausas no sincronizan los hilos, pero alargan el tiempo que cada hilo pasa en su ciclo, alterando el comportamiento de la concurrencia.
