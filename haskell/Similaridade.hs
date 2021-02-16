module Similaridade where

eleva_quadrado :: (Floating a) => [a] -> [a]
eleva_quadrado a = map (\x -> x * x) a

somatorio :: (Floating a) => [a] -> a
somatorio a = foldr (+) 0 a

norma :: (Floating a) => [a] -> a
norma a = sqrt (somatorio (eleva_quadrado a))

mul_element_wise :: (Floating a) =>  [a] -> [a] -> [a]
mul_element_wise [] [] = []
mul_element_wise (ha:la) (hb:lb) = [ha*hb] ++ mul_element_wise la lb

inner_product :: (Floating a) => [a] -> [a] -> a
inner_product a b = somatorio (mul_element_wise a b)

similaridade :: (Floating a) => [a] -> [a] -> a
similaridade a b = (inner_product a b) / ((norma a) * (norma b))
