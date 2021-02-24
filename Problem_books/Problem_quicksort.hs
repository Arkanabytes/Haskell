-- ¿Recuerdas nuestra función quicksort del capítulo anterior? Usamos listas por comprensión para filtrar los elementos que eran menores o 
-- iguales y mayores que el pivote. Podemos conseguir lo mismo de forma más legible usando filter.

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter (<=x) xs)
        biggerSorted = quicksort (filter (>x) xs)
    in  smallerSorted ++ [x] ++ biggerSorted
