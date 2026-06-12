# HW3__TP

Домашняя работа по теме Docker и bash-скрипты.
Проект состоит из двух частей: генератора данных и программы для создания отчета.
Генератор создает CSV-файл с данными, а reporter на основе этого файла создает HTML-отчет.

## Что реализовано
В проекте есть две части:
generator
reporter

generator создает файл с данными data.csv.
reporter создает HTML-отчет report.html на основе файла data.csv.
Также написан bash-скрипт run.sh, через который запускаются команды проекта.

## Запуск

Собрать и запустить генератор:
./run.sh build_generator
./run.sh run_generator

Собрать и запустить reporter:
./run.sh build_reporter
./run.sh run_reporter

Скопировать данные в local_data:
./run.sh create_local_data

Показать структуру проекта:
./run.sh structure

Очистить данные:
./run.sh clear_data

## Дополнительно

Зайти внутрь контейнеров:
./run.sh inside_generator
./run.sh inside_reporter

## Автор

Плетцова Софья ББИ2502