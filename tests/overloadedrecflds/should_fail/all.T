test('overloadedrecfldsfail01', normal, compile_fail, [''])
test('overloadedrecfldsfail02', normal, compile_fail, [''])
test('overloadedrecfldsfail03', normal, compile_fail, [''])
test('overloadedrecfldsfail04',
     extra_clean(['OverloadedRecFldsImport.hi', 'OverloadedRecFldsImport.o']),
     multimod_compile_fail, ['overloadedrecfldsfail04', ''])
