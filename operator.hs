-- Zdefiniuj operator +*+ wykonuj�cy dodawanie dw�ch liczb oraz zwi�kszaj�cy dodatkowo wynik o 1 (np. 2 +*+ 3 = 6) tak, aby by� wykonywany po dodawaniu i mno�eniu (1 + 2 +*+ 3 * 3 = 13). 
-- Zdefiniuj nowy operator pot�gowania ^^^, kt�ry dla dzia�ania 2 ^^^ 3 ^^^ 4 da wynik 4096 ( (2^3)^4 ).



infixr 5 +*+
infixl 7 ^^^
--(^^^):: Integer -> Integer -> Integer
(+*+) a b = a+b+1
(^^^) a b = a^b