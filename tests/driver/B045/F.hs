{-# LANGUAGE ForeignFunctionInterface #-}
module B045.F where
foreign export ccall f :: Int -> Int
f :: Int -> Int
f n = n + 1
