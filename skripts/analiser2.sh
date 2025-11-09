#!/bin/bash

for i in $(ls $1)
do
  for file in $(cat $1$i)
  do
    email=$(echo $file | cut -d ":" -f3)
    if [[ $email =~ @spbstu.ru ]]
    then
      name=$(echo $file | cut -d ":" -f1)
      age=$(echo $file | cut -d ":" -f2)
      echo -e "Имя: $name, Возраст: $age, Почта: $email"
    fi
  done
done
