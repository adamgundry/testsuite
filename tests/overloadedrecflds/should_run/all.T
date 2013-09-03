test('overloadedrecfldsrun01', normal, compile_and_run, [''])
test('overloadedrecfldsrun02',
     extra_clean(['OverloadedRecFldsImport.hi', 'OverloadedRecFldsImport.o']),
     multimod_compile_and_run, ['overloadedrecfldsrun02', ''])
test('overloadedrecfldsrun03', normal, compile_and_run, [''])
test('overloadedrecfldsrun04', normal, compile_and_run, [''])
test('overloadedrecfldsrun05', expect_broken_for(8196, opt_ways), compile_and_run, [''])
test('overloadedrecfldsrun06', normal, compile_and_run, [''])
test('overloadedrecfldsrun07',
     extra_clean(['OverloadedRecFldsRun07_A.hi', 'OverloadedRecFldsRun07_A.o',
                  'OverloadedRecFldsRun07_B.hi', 'OverloadedRecFldsRun07_B.o']),
     multimod_compile_and_run, ['overloadedrecfldsrun07', ''])
test('overloadedrecfldsrun08',
     extra_clean(['OverloadedRecFldsRun07_A.hi', 'OverloadedRecFldsRun07_A.o',
                  'OverloadedRecFldsRun07_B.hi', 'OverloadedRecFldsRun07_B.o',
                  'OverloadedRecFldsRun08_C.hi', 'OverloadedRecFldsRun08_C.o']),
     multimod_compile_and_run, ['overloadedrecfldsrun08', ''])
test('overloadedrecfldsrun10', exit_code(1), compile_and_run, [''])
