## Вступление
Данный проект собирает php7.0 в docker и производит откат версии tz базы
с часовыми поясами до версии 2010.9. Так задумывалось. По факту внутри docker
timezonedb понижается до 2010.9, но по факту не используется (Timezone Database = internal,
"Olson" Timezone Database Version = 2017.3).

При этом сборка php7.0 вне docker позволяет понизить tzdata до 2010.9. Что дает основание считать
источником проблемы сам docker или особенности сборки под него.

## Цель
Разобраться, почему так происходит и заставить php внутри docker использовать заданную
версию tzdata, т.е. 2010.9.

## Установка и запуск
Системные требования:
 * docker
 * make

1. Устанавливаем: `make build`
1. Запускаем: `make start`
1. Проверяем версию: `make tzversion` (должно выводиться 2010.9, а не 2017.3)
