# ***Numerical Methods***

## **Index**
  
  * [Description](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Descripci%C3%B3n.md)
  * [Visuals](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Visuales.md)
  * [Installation](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Instalaci%C3%B3n.md)
  * [Use](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Uso.md)
  * [Suport](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Soporte.md)
  * [Authors and Gratefulness](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Autores.md)


## **Description** :page_with_curl:
---
In this proyect it was developed different numerical methods using Matlab. An numerical method is a series of steps that are proposed to obtain an approximate solution of a problem. To achieve this goal are used arithmetic and logical calculations.

The numerical methods that had been developed in this proyect are the followings ones :

1. Biseccion Method
2. Newton Method
3. Secant Method
4. False position Method
5. Aitken Method
6. Steffensen Method
7. Müller Method

---
## **Visuals** :tv:
[![Captura-de-pantalla-2022-06-27-074629.png](https://i.postimg.cc/h4zx5nJM/Captura-de-pantalla-2022-06-27-074629.png)](https://postimg.cc/Sj4Jnwfz)

---

## **Installation** :computer:

For the elaboration of the  numerical methods before talked, it has been necessary to use MatLab, which offers us an integrated development with its own programming language. To download this software you can click [*here* ](https://es.mathworks.com/products/get-matlab.html?s_tid=gn_getml "Link Matlab").

Some of the functions that have been used on the codes were the followings ones: 
* The function `inline` is used to construct an inline function object from the expression.

```matlab
f = inline(fx);
```
* The function `abs` returns the absolute value of each element of the array *X*.
```matlab
Y = abs(X);
```
* The function `plot` creates a 2D line plot of the data in *Y* versus the values in *X* .
```matlab
plot(X,Y);
```
* The function`disp` show us a text on the screen.
```matlab
disp('The process was correct');
```
---
## **Use**

* [biseccion.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/biseccion.m)
* [newton.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/newton.m)
* [secante.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/secante.m)
* [fposicion.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/fposicion.m)
* [aitken.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/aitken.m)
* [steffensen.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/steffensen.m)
* [muller.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/muller.m)

---
## **Suport** :interrobang:

For any questions of the program you can contact the followings emails *t1512700921@unitru.edu.pe* or *alem20x@gmail.com*. 

---
## **Authors and Gratefulness** :book:


|       Students     |   Emails   |
|       ----------    |  ---------| 
| Asencios Carranza Adrian Fabrizio|t1052700821@unitru.edu.pe|
| Córdova Saénz Enrique Andre|t1052701521@unitru.edu.pe|
| Mendez Quiñones Angel Piero|t1512700821@unitru.edu.pe|
| Mercado Cueva Esteban Manuel|t1052700521@unitru.edu.pe|
| Sánchez Chunga Alem Sebastian|t1512700921@unitru.edu.pe|
| Valdez Reyes José Alfredo|t1022700221@unitru.edu.pe|

This program was realized like an activity of Numerical Analysis teached by the scholastic *Peralta Castañeda Julio César*.

The implementation of the methods used in this program were extracted from the  Numerical Analysis book's pseudo codes:
>Burden, R. Faires, D. Burden, A. (2017) *Análisis Numérico*. CENGAGE Learning.
