-- Utw�rz funkcj� obliczaj�c� odleg�o�� dw�ch punkt�w na p�aszczy�nie (funkcja b�dzie przyjmowa� 4 wsp�rz�dne x1, y1, x2 i y2). Nast�pnie napisz funkcj�, kt�ra b�dzie przyjmowa� wsp�rz�dne wierzcho�k�w tr�jk�ta (6 liczb) oraz zwr�ci obw�d tr�jk�ta. Funkcja obliczaj�ca obw�d powinna wykorzystywa� funkcj� wyznaczaj�c� odleg�o�� punkt�w.

odl x1 y1 x2 y2= sqrt((x1-x2)*(x1-x2) + (y2-y1) * (y2 -y1))

troj x1 y1 x2 y2 x3 y3 = odl x1 y1 x2 y2 + odl x2 y2 x3 y3 + odl x1 y1 x3 y3