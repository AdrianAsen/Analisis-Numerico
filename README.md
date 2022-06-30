# ***Métodos Numéricos***

<p align="center">
  <a href="/DOCS/README_en.md">English </a>

---
 
## **Indice**
  
  * [Descripción.md](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Descripci%C3%B3n.md)
  
  
---
## **Descripción** :page_with_curl:
---
En este proyecto se llevó a cabo la elaboración de distintos métodos númericos utilizando matlab. Un método numérico es una serie de pasos que se plantean para obtener una solución aproximada de un problema. Para lograr este objetivo, se utilizan cálculos puramente aritméticos y lógicos.

Los métodos númericos que se han realizado en este proyecto han sido los siguientes :

1. Método de la Bisección
2. Método de Newton
3. Método de la Secante
4. Método de la Regla Falsa o Falsa Posición
5. Método de Convergencia acelerada de D2 de Aitken
6. Método de Steffensen
7. Método de Müller

---
## **Visuales e insignias** :tv:
  [![Captura-de-pantalla-2022-06-27-074629.png](https://i.postimg.cc/h4zx5nJM/Captura-de-pantalla-2022-06-27-074629.png)](https://postimg.cc/Sj4Jnwfz)
  
  [![interfaz.png](https://i.postimg.cc/2jQP2dgr/interfaz.png)](https://postimg.cc/w3BfBN6G)
  
---

## **Instalación** :computer:

Para la elaboración de los antes mencionados métodos numericos ha sido necesario la utilización de MatLab el cuál nos ofrece un desarrollo integrado con un lenguaje de programación propio. Para descargar dicho software puede ingresar [*aquí*](https://es.mathworks.com/products/get-matlab.html?s_tid=gn_getml "Link Matlab").

Algunas de las funciones utilizadas en los códigos fueron las siguientes :
* La función `inline` sirve para construir un objeto de función en línea a partir de la expresión.

```matlab
f = inline(fx);
```
* La función `abs` devuelve el valor absoluto de cada elemento del arreglo *X*.
```matlab
Y = abs(X);
```
* La función `plot` crea una gráfica de líneas en 2D de los datos en *Y* frente a los valores correspondientes en *X* .
```matlab
plot(X,Y);
```
* La función `disp` muestra un texto por la pantalla.
```matlab
disp('El procedimiento fue correcto');
```
---
## **Uso**

* [biseccion.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/biseccion.m)
* [newton.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/newton.m)
* [secante.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/secante.m)
* [fposicion.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/fposicion.m)
* [aitken.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/aitken.m)
* [steffensen.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/steffensen.m)
* [muller.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/muller.m)

---
## **Soporte** :interrobang:

Para cualquier consulta con respecto al funcionamiento del programa puede comunicarse al siguiente correo  *t1512700921@unitru.edu.pe* ó
*alem20x@gmail.com*.

---
## **Autores y Agradecimientos** :book:


|       Alumnos     |   CORREOS   |
|       ----------    |  ---------| 
| Asencios Carranza Adrian Fabrizio|t1052700821@unitru.edu.pe|
| Córdova Saénz Enrique Andre|t1052701521@unitru.edu.pe|
| Mendez Quiñones Angel Piero|t1512700821@unitru.edu.pe|
| Mercado Cueva Esteban Manuel|t1052700521@unitru.edu.pe|
| Sánchez Chunga Alem Sebastian|t1512700921@unitru.edu.pe|
| Valdez Reyes José Alfredo|t1022700221@unitru.edu.pe|


Este programa fue realizado como actividad del curso de Análisis Numérico dictado por el docente *Peralta Castañeda Julio César*.

La implementacion de los metodos utilizados en este programa fueron gracias a los pseudo codigos extraidos del libro Análisis Numérico:
>Burden, R. Faires, D. Burden, A. (2017) *Análisis Numérico*. CENGAGE Learning. 

