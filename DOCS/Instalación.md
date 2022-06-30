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
