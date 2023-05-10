package = 'splita'
version = 'scm-1'
description = {
  summary = 'Split string into an associative array',
  license = 'MIT'
}
source  = {
  url = 'file:///usr/local/src/app/'..package..'-'..version..'.tar.gz'
}
build = {
  type = 'builtin',
  modules = {
    ['splita'] = 'init.lua',
  }
}
dependencies = {
  'lua >= 5.1'
}
