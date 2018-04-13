project('08-Configuration-files', 'c')

c_compiler = meson.get_compiler('c')

conf_data = configuration_data()

HEADERS = ['string', 'memory', 'limits', 'syslog']

foreach header:HEADERS
  if c_compiler.has_header(header + '.h')
    conf_data.set('HAVE_'+header.to_upper()+'_H', 1)
  endif
endforeach

conf_data.set('SIZEOF_INT', c_compiler.sizeof('int'))

if c_compiler.has_function('mmap', prefix : '#include <sys/mman.h>')
    conf_data.set('HAVE_MMAP', 1)
endif


configure_file(output : 'config.h',
               configuration : conf_data)

executable('08-Configuration-files', 'main.c')
