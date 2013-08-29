test('overloadedrecfldsrun01', normal, compile_and_run, [''])
test('overloadedrecfldsrun02',
     extra_clean(['OverloadedRecFldsImport.hi', 'OverloadedRecFldsImport.o']),
     multimod_compile_and_run, ['overloadedrecfldsrun02', ''])
test('overloadedrecfldsrun03', normal, compile_and_run, [''])
test('overloadedrecfldsrun04', normal, compile_and_run, [''])
