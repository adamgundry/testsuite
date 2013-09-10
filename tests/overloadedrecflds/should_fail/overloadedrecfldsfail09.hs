{-# LANGUAGE DataKinds, TypeFamilies, FlexibleInstances, MultiParamTypeClasses #-}

import GHC.Records

-- These instances are all illegal
type instance GetResult Int "foo" = Int
type instance SetResult Int "foo" Int = Int
instance Has Int "foo" Int
instance Upd Int "foo" Int
