--Recursion
--Ahora vamos a implementar take. Esta función toma un cierto número de elementos de una lista. Por ejemplo, take 3 [5,4,3,2,1] devolverá [5,4,3]. Si intentamos 
--obtener 0 o menos elementos de una lista, obtendremos una lista vacía. También si intentamos tomar algo de una lista vacía, obtendremos una lista vacía. Fíjate 
--que ambos son casos base. Vamos a escribirlo.

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _
    | n <= 0   = []
take' _ []     = []
take' n (x:xs) = x : take' (n-1) xs
