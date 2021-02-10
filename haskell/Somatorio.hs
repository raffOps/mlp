-- Usando 'foldl' ou 'foldr', elabore a função 'somatorio', que recebe uma lista de números reais e devolve a soma dos números da lista. 
-- P.ex.: somatorio[1.0, 2.2, 4.0] --> 7.2

module Somatorio where

somatorio :: (Floating a) => [a] -> a
somatorio a = foldr (+) 0 a