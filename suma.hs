-- Napisz funkcjê przyjmuj±c± jako parametr liczbê ca³kowit± n i wyznaczaj±c± sumê dodatnich liczb parzystych mniejszych lub równych n (reszta z dzielenia -- liczby a przez b uzyskujemy za pomoc±: mod a b).

suma :: Integer -> Integer
suma 0 = 0
suma b = if (mod b 2) == 0 then b + suma (b - 2) else suma (b - 1)