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

--- split
-- @table export
return splita
