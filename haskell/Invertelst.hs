--Elaborar a função invertelst, que recebe uma lista e retorna ela invertida.
module Invertelst where

invertelst :: [a] -> [a]
invertelst [] = [] 
invertelst (head:tail) = invertelst tail ++ [head]
