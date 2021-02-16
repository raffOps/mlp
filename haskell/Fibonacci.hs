module Fibonacci where

fibonacci n = take n (fibonacci 0 1) where  fibonacci a b = a:fibonacci b (a+b)




