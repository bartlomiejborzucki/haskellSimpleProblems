-- Zdefiniuj operator +*+ wykonuj±cy dodawanie dwóch liczb oraz zwiêkszaj±cy dodatkowo wynik o 1 (np. 2 +*+ 3 = 6) tak, aby by³ wykonywany po dodawaniu i mno¿eniu (1 + 2 +*+ 3 * 3 = 13). 
-- Zdefiniuj nowy operator potêgowania ^^^, który dla dzia³ania 2 ^^^ 3 ^^^ 4 da wynik 4096 ( (2^3)^4 ).



infixr 5 +*+
infixl 7 ^^^
--(^^^):: Integer -> Integer -> Integer
(+*+) a b = a+b+1
(^^^) a b = a^b