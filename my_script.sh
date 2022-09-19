#!/bin/bash
# Указатель на интерпритатор в 1 строке

# Выводит название текущего рабочего каталога
echo "Текущая дериктория"
pwd
# Вывод имени пользователя
echo "Имя пользователя"
whoami

#Отображение где баш о_0
whereis bash

#Смена цвета начиается с echo -e "\033
#Цвет текста с 3
#Цвет фона с 4
echo -e "\033[41m\033[30m - чёрный;
\033[0m\n\033[0m\033[31m - красный;
\n\033[32m - зелёный;
\n\033[33m - желтый;
\n\033[34m - синий;
\n\033[35m - фиолетовый;
\n\033[36m - голубой;
\n\033[37m - серый\n"

#Вывод подсказки с помощью команды read, используя опцию -p:
read -p "Введите имя: " var
echo "Было введено имя: " $var

#Скрытый ввод значения с помощью команды -sp
read -sp "Введите пароль: " password && echo
echo "Был введён пароль: " $password

#Использование переменных среды
echo " Домашний каталог текущего пользователя: $HOME "

#Использование пользовательских переменных
grade=5
person="Adam"
echo "$person is a good boy, he is in grade $grade"

# Подстановка команд
mydir=$(pwd)
echo " Текущий каталог: $mydir "
user1=`whoami`
echo " Имя текущего пользователя: $user1 "

#Математические операции
var1=$(( 5 + 5 ))
echo " 5 + 5 = $var1 "
var2=$(( $var1 * 2 ))
echo " 2*(5+5) = $var2 "

#Управляющая конструкция if-then-else
user=merkulov
folder=/Users/merkulov/Desktop
if grep $user /Users/
then
echo " Пользователь $user существует "
elif ls $folder
then
echo " Пользователь $user не существует, но есть каталог $folder "
else
echo " Нет ни пользователя $user ни каталога $folder "
fi

#Сравнение чисел
val1=6
if [ $val1 -gt 5 ]
then
echo "The test value $val1 is greater than 5"
else
echo "The test value $val1 is not greater than 5"
fi

#Сравнение строк
val1=6
if [ $val1 -gt 5 ]
then
echo "The test value $val1 is greater than 5"
else
echo "The test value $val1 is not greater than 5"
fi

#Проверка файлов
mydir= /Users/merkulov/Desktop
if [ -d $mydir ]
then
echo "The $mydir directory exists"
cd $ mydir
ls -l
else
echo "The $mydir directory does not exist"
fi

#Перебор списка простых значений
for var in first second third fourth fifth
do
echo "The  $var item"
done

#Инициализация цикла списком, полученным из результатов работы команды
file="myfile"
for var in $(cat $file)
do
echo " $var "
done

#IFS (Internal Field Separator) позволяет указывать разделители полей
file="/etc/passwd"
IFS=$'\n'
for var in $(cat $file)
do
echo " $var"
done

#for like at C
for (( i=1; i <= 10; i++ ))
do
echo "number is $i"
done

#Циклы while
var1=5
while [ $var1 -gt 0 ]
do
echo $var1
var1=$[ $var1 - 1 ]
done

#break позволяет прервать выполнение цикла. Её можно использовать и для циклов for, и для циклов while.
for var1 in 1 2 3 4 5 6 7 8 9 10
do
if [ $var1 -eq 5 ]
then
break
fi
echo "Number: $var1"
done

#continue Когда в теле цикла встречается эта команда, текущая итерация завершается досрочно
#и начинается следующая, при этом выхода из цикла не происходит.
for (( var1 = 1; var1 < 15; var1++ ))
do
if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
then
continue
fi
echo "Iteration number: $var1"
done

#command done
for (( a = 1; a < 10; a++ ))
do
echo "Number is $a"
done > myfile.txt
echo "finished."

#env ./my_script.sh 1 2 3 5
echo $0
echo $1
echo $2
echo $3

#Подсчет параметров ./my_script.sh 1 2 3 5 -> количество параметров будет 5
echo There were $# parameters passed.

#Вывод последнего параметра
echo The last parameters was ${!#}
