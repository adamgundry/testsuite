import Control.Concurrent
import Control.Exception

import System.IO (hFlush,stdout)

-- !!! Try to get two threads into a knot depending on each other.

-- This should result in the main thread being sent a NonTermination
-- exception (in GHC 5.02, the program is terminated with "no threads
-- to run" instead).

main = do
  let a = last ([1..10000] ++ [b])
      b = last ([2..10000] ++ [a])
	-- we have to be careful to ensure that the strictness analyser
	-- can't see that a and b are both bottom, otherwise the
	-- simplifier will go to town here, resulting in something like
	-- a = a and b = a.
  forkIO (print a)
  r <- Control.Exception.try $ print b
  print r
  hFlush stdout -- HACK, because sometimes stdout gets finalised too early in
		-- this test, and I can't be bothered to figure out exactly
		-- how it should work. --SDM 23/7/2003
