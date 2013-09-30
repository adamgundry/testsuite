{-# LANGUAGE OverloadedRecordFields, TypeFamilies #-}

module OverloadedRecFldsRun12_A where

data family F a

data instance F Bool = MkFBool { foo :: Bool }
  deriving Show

data instance F Char = MkFChar { bar :: Char }
  deriving Show
