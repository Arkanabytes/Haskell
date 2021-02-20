--cycle toma una lista y crea un ciclo de listas iguales infinito. Si intentáramos mostrar el resultado nunca terminaría así que hay que cortarlo en alguna parte.

ghci> take 10 (cycle [1,2,3])
[1,2,3,1,2,3,1,2,3,1]
ghci> take 12 (cycle "LOL ")
"LOL LOL LOL "
