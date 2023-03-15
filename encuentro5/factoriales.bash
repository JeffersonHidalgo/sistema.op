#!/bin/bash

function calcular_factorial {
  num=$1
  if ((num == 0)); then
    echo 1
  else
    echo $((num * $(calcular_factorial $((num - 1)))))
  fi
}

function solicitar_numero {
  read -p "Introduce un número entero positivo: " num
  if [[ ! "$num" =~ ^[0-9]+$ ]]; then
    echo "Error: \"$num\" no es un número entero positivo válido."
    return 1
  fi
  echo $(calcular_factorial "$num")
}

trap 'echo "Error: se esperaba un número entero positivo." >&2; solicitar_numero' ERR
while ! solicitar_numero; do
  :
done

