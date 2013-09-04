{-# LANGUAGE ExistentialQuantification, RankNTypes #-}

module OverloadedRecFldsFail08_A where

-- x is existential (naughty)
data T = forall e . MkT { x :: e }

-- y and z are higher-rank
data U = MkU { y :: forall a . a -> a }
       | MkU2 { z :: (forall b . b) -> () }
