{-# LANGUAGE OverloadedRecordFields, TypeFamilies #-}

module OverloadedRecFldsRun08_C ( F(..) ) where

import OverloadedRecFldsRun07_A ( F(..) )

data instance F () = MkFUnit { foo :: () }
