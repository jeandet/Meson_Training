project('04-Tests', 'c', 'cpp')

subdir('simplelib')

gtest = dependency('gtest', required : true, main : false, fallback:['gtest','gtest_mainless_dep'])

manual_test_c_exe = executable('manual_test_c_exe', 'manual-test/main.c', dependencies:simplelib)
manual_test_py_exe = find_program('python-test/test.py')
gtest_test = executable('gtests_test_exe', 'gtest-test/test.cpp', dependencies:[gtest, simplelib])



test('manual_test_c', manual_test_c_exe)
test('manual_test_py', manual_test_py_exe)
test('gtest_test', gtest_test)
