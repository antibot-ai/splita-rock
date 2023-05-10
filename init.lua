--- Разбиение строки на ассоциативный массив

--- Разбивает строку по разделителю
--
-- @param str Строка для разбиения
-- @param sep Строка-разделитель
-- @return arr Ассоциативный массив
local function splita(str, sep, opts)
  opts = opts or {}

  local ret = {}

  for part in string.gmatch(str, '[^'..sep..']+') do
    if opts.uppercase then
      part = string.upper(part)
    end

    ret[part] = part
  end

  return ret
end

--- split
-- @table export
return splita
