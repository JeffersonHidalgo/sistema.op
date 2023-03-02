
#### Programa de sobre adivinar un numero ###

# Generar un número aleatorio del 1 al 10
num=$((RANDOM % 10 + 1))

# Establecer el número de intentos en 3
intento=3

# Recorrer el número de intentos
while [[ $intento -gt 0 ]]
do
    # Pedir al usuario que adivine el número
    echo "Adivina un número entre 1 y 10 (te quedan $intento intentos): "
    read entrada
    
    # Comprobar si la adivinanza es correcta
    if [[ $entrada -eq $num ]]
    then
        echo "¡Felicitaciones! Adivinaste el número en $(expr 3 - $intento + 1) intento(s)."
        exit 0
    else
        echo "Lo siento, el número no era $entrada."
        intento=$(expr $intento - 1)
    fi
done

# Si el usuario se queda sin intentos, imprimir el número correcto
echo "Lo siento, te quedaste sin intentos. El número era $num."
