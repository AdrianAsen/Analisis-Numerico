# ***Méthodes numériques***



<p align="center">
  <a href="/DOCS/README_fr.md">Français </a>


 
## **Indice**
  
  * [La description](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Descripci%C3%B3n.md)
  * [Visuels](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Visuales.md)
  * [Facilité](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Instalaci%C3%B3n.md)
  * [Utilisation](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Uso.md)
  * [Soutien](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Soporte.md)
  * [Auteurs et remerciements](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/DOCS/Autores.md)
  
## **La description** :page_with_curl:

Dans ce projet, l'élaboration de différentes méthodes numériques a été réalisée à l'aide de matlab. Une méthode numérique est une suite d'étapes qui sont proposées pour obtenir une solution approchée d'un problème. Pour atteindre cet objectif, des calculs purement arithmétiques et logiques sont utilisés.

Les méthodes numériques qui ont été réalisées dans ce projet ont été les suivantes :

1. Méthode de bissection
2. La méthode de Newton
3. Méthode sécante
4. Fausse règle ou méthode de fausse position
5. Méthode de convergence accélérée D2 d'Aitken
6. Méthode de Steffensen
7. La méthode de Müller


## **Visuels et badges** :tv:
  [![Captura-de-pantalla-2022-06-27-074629.png](https://i.postimg.cc/h4zx5nJM/Captura-de-pantalla-2022-06-27-074629.png)](https://postimg.cc/Sj4Jnwfz)
  
  [![interfaz.png](https://i.postimg.cc/2jQP2dgr/interfaz.png)](https://postimg.cc/w3BfBN6G)
  


## **Facilité** :computer:

Pour l'élaboration des méthodes numériques précitées, il a été nécessaire d'utiliser MatLab, qui nous offre un développement intégré avec son propre langage de programmation. Pour télécharger ce logiciel, vous pouvez entrer [*ici*](https://es.mathworks.com/products/get-matlab.html?s_tid=gn_getml "Link Matlab").

Certaines des fonctions utilisées dans les codes étaient les suivantes :
* La fonction `inline` est utilisée pour construire un objet fonction en ligne à partir de l'expression.

```matlab
f = inline(fx);
```
* La fonction `abs` renvoie la valeur absolue de chaque élément du tableau *X*.
```matlab
Y = abs(X);
```
* La fonction `plot` crée un tracé linéaire 2D des données dans *Y* par rapport aux valeurs correspondantes dans *X* .
```matlab
tracer(X,Y);
```
* La fonction `disp` affiche du texte à l'écran.
```matlab
disp('La procédure a réussi');
```

## **Utilisation**

* [biseccion.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/biseccion.m)
* [newton.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/newton.m)
* [secante.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/secante.m)
* [fposicion.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/fposicion.m)
* [aitken.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/aitken.m)
* [steffensen.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/steffensen.m)
* [muller.m](https://github.com/AdrianAsen/Analisis-Numerico/blob/main/Funciones/muller.m)


## **Soutien** :interrobang:

Pour toute question concernant le fonctionnement du programme, vous pouvez contacter l'email suivant *t1512700921@unitru.edu.pe* ou
*alem20x@gmail.com*.


## **Auteurs et remerciements** :book:


|       Élèves    |   E-MAILS   |
|       ----------    |  ---------| 
| Asencios Carranza Adrian Fabrizio|t1052700821@unitru.edu.pe|
| Córdova Saénz Enrique Andre|t1052701521@unitru.edu.pe|
| Mendez Quiñones Angel Piero|t1512700821@unitru.edu.pe|
| Mercado Cueva Esteban Manuel|t1052700521@unitru.edu.pe|
| Sánchez Chunga Alem Sebastian|t1512700921@unitru.edu.pe|
| Valdez Reyes José Alfredo|t1022700221@unitru.edu.pe|


Ce programme a été réalisé comme une activité du cours d'Analyse Numérique dicté par le professeur *Peralta Castañeda Julio César*.

La mise en œuvre des méthodes utilisées dans ce programme s'est faite grâce aux pseudo codes extraits du livre Numerical Analysis :
>Burden, R. Faires, D. Burden, A. (2017) *Análisis Numérico*. CENGAGE Learning. 
