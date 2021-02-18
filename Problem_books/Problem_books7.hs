--Sin embargo, si hubiésemos querido obtener el sucesor del producto de los números 9 y 10, no podríamos haber escrito succ 9 * 10 porque hubiésemos 
--obtenido el sucesor de 9, el cual hubiese sido multiplicado por 10, obteniendo 100. Tenemos que escribir succ (9 * 10) para obtener 91.

ghci> succ 9 + max 5 4 + 1
16
ghci> (succ 9) + (max 5 4) + 1
16
