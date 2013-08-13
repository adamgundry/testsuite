-- This module does not enable -XOverloadedRecordFields, but it should
-- still be able to refer to non-overloaded fields like `y`

import OverloadedRecFldsImport

main = print (y u)