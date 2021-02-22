--Fíjate que : toma un número y una lista de números o un carácter y una lista de caracteres, mientras que ++ toma dos listas. Incluso si añades un elemento al
--final de las lista con ++, hay que rodearlo con corchetes para que se convierte en una lista de un solo elemento.

ghci> [1,2] ++ 3
<interactive>:1:10:
    No instance for (Num [a0])
      arising from the literal `3'
      [...]

ghci> [1,2] ++ [3]
[1,2,3]
