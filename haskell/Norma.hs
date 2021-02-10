-- Usando funções de ordem superior ('map', 'fold'...) e lambda (i.e., não nomeadas), elabore uma função que receba uma lista de números reais 
-- (representando um vetor Euclidiano) e calcule a norma de tal vetor, conforme a descrição seguinte (tal definição leva em conta que os valores 
-- do vetor estão normalizados entre 0.0 e 1.0): 
-- P.ex.: norma [0.1, 0.2, 0.3, 0.4] --> 0.547722557505
module Norma where

eleva_quadrado :: (Floating a) => [a] -> [a]
eleva_quadrado a = map (\x -> x * x) a

somatorio :: (Floating a) => [a] -> a
somatorio a = foldr (+) 0 (eleva_quadrado a)

norma :: (Floating a) => [a] -> a
norma a = sqrt (somatorio a)



