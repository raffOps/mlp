module Replica where

replica :: (Integral a) => a -> a -> [a]
replica a b = [a | x <- [1..b]]