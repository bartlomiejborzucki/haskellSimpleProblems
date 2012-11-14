-- Utwórz funkcjê obliczaj±c± odleg³o¶æ dwóch punktów na p³aszczy¼nie (funkcja bêdzie przyjmowaæ 4 wspó³rzêdne x1, y1, x2 i y2). Nastêpnie napisz funkcjê, która bêdzie przyjmowaæ wspó³rzêdne wierzcho³ków trójk±ta (6 liczb) oraz zwróci obwód trójk±ta. Funkcja obliczaj±ca obwód powinna wykorzystywaæ funkcjê wyznaczaj±c± odleg³o¶æ punktów.

odl x1 y1 x2 y2= sqrt((x1-x2)*(x1-x2) + (y2-y1) * (y2 -y1))

troj x1 y1 x2 y2 x3 y3 = odl x1 y1 x2 y2 + odl x2 y2 x3 y3 + odl x1 y1 x3 y3