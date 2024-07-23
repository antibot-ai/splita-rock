# Разбиение строки по разделителю
Модуль разбивает строку строку по разделителю.

### Параметры
- **str** (строка) Строка для разбиения
- **sep** (строка [опционально]) Строка-разделитель. Пробел по умолчанию
- **opts** (таблица [опционально]) Таблица опций
   - `trim` (boolean): Удаление пробелов по краям строки
   - `upper` (boolean): Перевод захваченной части в верхний регистр
   - `lower` (boolean): Перевод захваченной части в нижний регистр

# Установка
### tarantool
```bash
tt rocks install --only-server=https://rocks.antibot.ru splita
```
### luarocks
```bash
luarocks install --server=https://rocks.antibot.ru splita
```

# Использование
```lua
local splita = require('splita')

local map = splita('one,two,ten', ',')
print(map.one) -- 'one'
print(map['two']) -- 'two'
print(map.ten) -- 'ten'
```

# Генерация ldoc
```bash
ldoc -s '!new' -d ldoc lua
```

# Тестирование
```bash
luatest test/*
```
