--Recursion
--La función maximum toma una lista de cosas que pueden ser ordenadas (es decir instancias de la clase de tipos Ord) y devuelve la más grande. Piensa en como 
--implementaríamos esto de forma imperativa. Probablemente crearíamos una variable para mantener el valor máximo hasta el momento y luego recorreríamos los 
--elementos de la lista de forma que si un elemento es mayor que el valor máximo actual, lo remplazaríamos. El máximo valor que se mantenga al final es el resultado.

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Máximo de una lista vacía"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise   = maxTail
    where maxTail = maximum' xs

--Una forma más clara de escribir la función maximum' es usando la función max. Si recuerdas, la función max toma dos cosas que puedan ser ordenadas y devuelve la 
--mayor de ellas. Así es como podríamos reescribir la función utilizando max:

maximum' :: (Ord a) => [a] -> a
maximum' []     = error "maximum of empty list"
maximum' [x]    = x
maximum' (x:xs) = x `max` (maximum' xs)
