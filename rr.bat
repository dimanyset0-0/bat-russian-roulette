@echo off
chcp 65001

set /a num1=0
set /a num2=6

set /p number=Введите число от 0 до 6:

if %number% GTR %num2% (
    echo Число не может быть больше 6!
    pause
    exit
) 
if %number% LSS %num1% (
    echo Число не может быть меньше 0!
    pause
    exit
)

set /a result=%RANDOM% * 6 / 32768 + 1
if %number%==%result% (
    echo Вы проиграли! Ваше число: %number%
    pause
) else (
    echo Вы победили! Ваше число: %number%. Выпавшее число: %result%.
    pause
)