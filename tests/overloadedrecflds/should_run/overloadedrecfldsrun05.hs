{-# LANGUAGE OverloadedRecordFields, DataKinds, PolyKinds, GADTs,
             StandaloneDeriving, TypeFamilies, UndecidableInstances #-}

import Data.Proxy
import GHC.Records

data T (a :: x -> *)(b :: x) :: * where
  MkT :: a b -> T a b

deriving instance Show (a b) => Show (T a b)

data U (a :: x -> *)(b :: x)(c :: y -> *)(d :: y)
  = MkU { bar :: T a b, baz :: T c d }
  deriving Show

data V (a :: x -> *)(b :: x)(c :: x -> *)(d :: x)
  = MkV { bar :: T a b, baz :: T c d }
  deriving Show

data F (f :: * -> *) = MkF
  deriving Show

-- Updates to fields of U may change kinds:
-- x :: U F f [] Bool
x = setField (Proxy :: Proxy "bar") (MkU (MkT [3]) (MkT [False])) (MkT MkF)

-- Updates to fields of V may not, but may change types:
-- y :: V Maybe Int [] Bool
y = setField (Proxy :: Proxy "bar") (MkV (MkT [3]) (MkT [False])) (MkT (Just 6))



type family Foo b
type instance Foo Int = Bool
type instance Foo Bool = Int

data W a = MkW { foo :: Foo a }

deriving instance Show (Foo a) => Show (W a)

data X b = MkX { bar :: W (Foo b) }

deriving instance Show (Foo (Foo a)) => Show (X a)

r :: W Int
r = MkW { foo = True }

-- Updates cannot change types, since the variables are not rigid
z :: X Bool
z = setField (Proxy :: Proxy "bar") (MkX r) $
      setField (Proxy :: Proxy "foo") r False


main = do  print x
           print y
           print z