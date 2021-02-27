--Recursion

--Como Haskell soporta listas infinitas, en realidad nuestra recursión no tiene porque tener casos base. Pero si no los tiene, seguiremos calculando algo 
--infinitamente o bien produciendo una estructura infinita. Sin embargo, lo bueno de estas listas infinitas es que podemos cortarlas por donde queramos. repeat toma
--un elemento y devuelve una lista infinita que simplemente tiene ese elemento. Una implementación recursiva extremadamente simple es:

repeat' :: a -> [a]
repeat' x = x : repeat' x
