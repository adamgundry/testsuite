{-# LANGUAGE OverloadedRecordFields #-}

import OverloadedRecFldsRun07_B
import OverloadedRecFldsRun08_C

main = do print (foo (MkFInt 3))
          print (foo (MkFUnit ()))
