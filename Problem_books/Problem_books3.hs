--La álgebra booleana es también bastante simple. Como seguramente sabrás, && representa el Y lógico mientras que || representa el O lógico. not niega True a 
False y viceversa.--

ghci> True && False
False
ghci> True && True
True
ghci> False || True
True
ghci> not False
True
ghci> not (True && True)
False
