@echo off
echo Выберите ОС для загрузки:
echo 1 - Windows 10
echo 2 - Windows 7
set /p choice="Введите номер: "

if "%choice%"=="1" (
    bcdedit /default {идентификатор_win10}
    echo Установлена загрузка Windows 10.
) else if "%choice%"=="2" (
    bcdedit /default {идентификатор_win7}
    echo Установлена загрузка Windows 7.
) else (
    echo Неверный выбор.
    pause
    exit
)

shutdown /r /t 10
echo Система перезагрузится через 10 секунд...
pause