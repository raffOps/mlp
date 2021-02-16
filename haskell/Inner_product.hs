-- Usando funções de ordem superior ('map', 'fold'...), elabore uma função que receba duas listas de números reais 
-- (representando vetores Euclidianos) e calcule o produto interno entre esses vetores, conforme a descrição seguinte
-- (tal definição leva em conta que os valores dos vetores estão normalizados entre 0.0 e 1.0): 

module Inner_product where


mul_element_wise :: (Floating a) =>  [a] -> [a] -> [a]
mul_element_wise [] [] = []
mul_element_wise (ha:la) (hb:lb) = [ha*hb] ++ mul_element_wise la lb

somatorio :: (Floating a) => [a] -> a
somatorio a = foldr (+) 0 a

inner_product :: (Floating a) => [a] -> [a] -> a
inner_product a b = somatorio (mul_element_wise a b)

