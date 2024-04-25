nil = [ ""
      , ""
      , ""
      ]

dn = [ "┐"
     , "│"
     , "└"
     ]

up = [ "┌"
     , "│"
     , "┘"
     ]


lo = [ " "
     , " "
     , "─"
     ]

hi = [ "─"
     , " "
     , " "
     ]

-- out :: [[String]] -> IO ()
out :: [String] -> IO ()
out xs = id
       $ putStrLn
       $ concat
       $ interleave "\n"
       -- $ foldl zipWith
       $ xs

interleave x =
  let
    il (y:ys) = y:x:(il ys)
    il [] = []
  in 
    il

plus :: [[a]] -> [[a]] -> [[a]]
plus = zipWith (++)

plus_ :: [[[a]]] -> [[a]]
plus_ [x] = x
plus_ (x:xs) = x `plus` (plus_ xs)
-- repeat xs = xs ++ repeat xs

clk1  = up `plus` dn `plus` lo `plus` lo
clk2  = clk1 `plus` clk1
clk4  = clk2 `plus` clk2
clk8  = clk4 `plus` clk4
clk16 = clk8 `plus` clk8

ex1a  = plus_ [lo,lo,up,hi,dn,lo,lo,up,dn,up,hi,dn,lo,lo]
ex1b  = plus_ [lo,lo,lo,up,hi,hi,hi,dn,lo,lo,lo]
ex1c  = plus_ [lo,lo,up,hi,dn,lo,lo]

ex1 =
  do
    out ex1a
    out ex1b
    out ex1c

q0 = id
   $ plus_
   $ take 30
   $ concat
   $ repeat
   $ [up,dn,lo]
-- plusAll = foldl nil plus
