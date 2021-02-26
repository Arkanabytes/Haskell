--Recursion

-- Ahora que sabemos cómo pensar de forma recursiva en general, vamos a implementar unas cuantas funciones de forma recursiva. En primer lugar, vamos a implementar 
--replicate. replicate toma un Int y algún elemento y devuelve una lista que contiene varias repeticiones de ese mismo elemento. Por ejemplo, replicate 3 5 devuelve
--[5,5,5]. Vamos a pensar en el caso base. Mi intuición me dice que el caso base es 0 o menos. Si intentamos replicar algo 0 o menos veces, debemos devolver una 
--lista vacía. También para números negativos ya que no tiene sentido.

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0    = []
    | otherwise = x:replicate' (n-1) x
