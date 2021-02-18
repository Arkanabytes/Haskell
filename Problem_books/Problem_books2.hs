--Se explica por si solo. También podemos utilizar varias operaciones en una misma línea de forma que se sigan todas las reglas de precedencia que todos 
conocemos. Podemos usar paréntesis para utilizar una precedencia explícita.--

ghci> (50 * 100) - 4999
1
ghci> 50 * 100 - 4999
1
ghci> 50 * (100 - 4999)
-244950
