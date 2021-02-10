--Elaborar a função powlist, que recebe uma lista e um número, 
--retornando uma lista com os elementos elevados ao número recebido.

module Powlist where
 
powlist :: (Integral a) => (Integral b) => a -> [b] -> [b]
powlist x [] = [] 
powlist x (head:tail) = [head^x] ++ (powlist x tail)