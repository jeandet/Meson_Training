project('07-Generator', 'c')

gen_exe = find_program('generator.py')
gen = generator(gen_exe,
                output  : '@BASENAME@',
                arguments : ['@INPUT@', '@OUTPUT@'])

main = gen.process('main.c.in')

executable('07-generator', main)
