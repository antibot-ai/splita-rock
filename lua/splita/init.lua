--- Разбиение строки на ассоциативный массив
-- @module splita
local splita

--- Разбивает строку по разделителю
--
-- @param str (string) Строка для разбиения
-- @param[opt] sep (string) Строка-разделитель
-- @param[optchain] opts (table) Таблица опций
-- @param opts.trim (boolean): Удаление пробелов по краям строки
-- @param opts.upper (boolean): Перевод захваченной части в верхний регистр
-- @param opts.lower (boolean): Перевод захваченной части в нижний регистр
-- @return arr Ассоциативный массив
-- @usage
  -- local map = splita('one,two,ten', ',')
  -- print(map.one) -- 'one'
  -- print(map['two']) -- 'two'
  -- print(map.ten) -- 'ten'
function splita(str, sep, opts)
  sep = sep or ' '
  opts = opts or {}

  local ret = {}
  for part in string.gmatch(str, '[^'..sep..']+') do
    if opts.trim then
      part = part:gsub('^%s+', ''):gsub('%s+$', '')
    end

    if opts.upper then
      part = string.upper(part)
    elseif opts.lower then
      part = string.lower(part)
    end

    ret[part] = part
  end

  return ret
end

return splita
