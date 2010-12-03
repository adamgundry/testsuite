import GHC.Conc
import Control.Concurrent
import Control.Monad

-- tests for a bug where throwTo targets a thread just created by
-- forkOnIO, which is still in the process of migrating to another CPU (#4811)

main = do
  m <- newEmptyMVar
  forkOnIO 0 $ do
     replicateM_ 1000 $ do
       t <- forkOnIO 1 $ return ()
       killThread t
     putMVar m ()
  takeMVar m
