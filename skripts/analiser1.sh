#!/bin/bash

for i in $(ls $1)
do
  for file in $(cat $1$i)
  do
    name=$(echo $file | cut -d ":" -f1)
    age=$(echo $file | cut -d ":" -f2)
    email=$(echo $file | cut -d ":" -f3)
    echo -e "Имя: $name, Возраст: $age, Почта: $email"
  done
done
