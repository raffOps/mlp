module Eleva_2 where

eleva_2 n = take n eleva_2  where eleva_2 = 2:map (^2) eleva_2