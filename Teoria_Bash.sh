#!/usr/bin/env bash

# Ejemplo para emprimir un Hello World!:
echo "Hello world!" # => Hello world!

# Declarar una variable:
variable="Una string"

# Como se usa:
echo "$variable" # => Una string

# Leyendo una variable desde un input:
echo " Cual es tu nombre?"
read nombre

# De esta forma no es neceario crear una nueva variable.
echo "Hola, $nombre!"

# Cuando declaras una variable debes escribir su nombre sin $. Pero si quieres usar el valor de la variable, debes usar $. 
# Es recomendable usar comillas dobles aunque se puede usar sin estas pero no es lo mejor.

#Declarar un array con 6 elementos:
array=(uno dos tres cuatro cinco seis)

#Imprimir el primer elemento:
echo "${array[0]}" # => "uno"

#Imprimir todos los elementos:
echo "${array[@]}" # => "uno dos tres cuatro cinco seis"

#Imprimir el número de elementos:
echo "${#array[@]}" # => "6"

#Imprimir el número de caracteres en el tercer elemento:
echo "${#array[2]}" # => "5"

#Imprimir 2 elementos a partir del cuarto:
echo "${array[@]:3:2}" # => "cuatro cinco"

# La estructura condicional if es muy parecida a la de otros lenguajes .
# La condición es verdadera si el valor de $nombre no es igual al nombre de usuario del usuario actual:
if [[ "$nombre" != "$USER" ]]; then
    echo "Tu nombre no es igual a tu usario"
else
    echo "TU nombre es igual a tu usuario"
fi
# Otros operadores de comparación para números que se enumeran:
# -ne - no igual
# -lt - menor que
#-gt - mayor que
# -le - menor o igual que
#-ge - mayor o igual que

# Los bucles for iteran segun los argumentos dados:
# El contenido de $Variable se imprime tres veces.
# el argumento tambien puede ser expresado de la sigueinte forma: for ((a=1; a <= 3; a++))
for Variable in {1..3} 
do
    echo "$Variable"
done
# => 1
# => 2
# => 3


#Ciclo while:
while [ true ]
do
    echo "Esto es el cuerpo del ciclo..."
    break
done
# => Esto es el cuerpo del ciclo...


