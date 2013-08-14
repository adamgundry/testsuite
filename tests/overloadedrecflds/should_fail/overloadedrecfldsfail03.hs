{-# LANGUAGE OverloadedRecordFields, TypeFamilies #-}

data family F a

data instance F Int  = MkFInt  { foo :: Int }
data instance F Bool = MkFBool { foo :: Bool }

main = return ()