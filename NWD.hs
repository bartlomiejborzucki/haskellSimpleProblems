-- NWD dwóch liczba naturalnych


nwd b 0 = b
nwd a b = if a > b then nwd b (mod a b) else nwd a (mod b a)