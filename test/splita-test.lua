-- test/splita-test.lua
local luatest = require('luatest')
local g = luatest.group('translit')

-- Функция разбиения строки на ассоциативный массив
local splita = require('lua.splita.init')

-- Тесты
g.test_splita = function()
  local map = splita('one,two,ten', ',')
  luatest.assert_equals(map.one, 'one')
  luatest.assert_equals(map.two, 'two')
  luatest.assert_equals(map.ten, 'ten')
end

g.test_splita_opts = function()
  local map = splita(' ONE,TWO,TEN ', ',', {
    trim = true,
    lower = true
  })
  luatest.assert_equals(map.one, 'one')
  luatest.assert_equals(map.two, 'two')
  luatest.assert_equals(map.ten, 'ten')
end
