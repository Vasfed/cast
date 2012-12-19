require 'mkmf'

if ENV['DEBUG']
  CONFIG['debugflags'] << ' -ggdb3 -O0'
end

create_makefile 'casty_ext'
