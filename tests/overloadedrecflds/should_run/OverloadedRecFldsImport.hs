{-# LANGUAGE OverloadedRecordFields #-}

module OverloadedRecFldsImport (U(..), V(MkV, x), Unused(..), u) where

data U = MkU { x :: Bool, y :: Bool }
data V = MkV { x :: Int }
data Unused = MkUnused { unused :: Bool }

u = MkU False True