=============================
Archivos main.tex
=============================
En prácticamente todo el template, se encuentran a disposición unos archivos llamados
*main.tex*. Son los archivos maestros que organizan la secuencia de compilación del
documento, es decir, determinan que archivo es considerado para la compilación
y en qué orden serán tratados para obtener el resultado final del pdf.

El main.tex principal
-----------------------------
Es el archivo que se encuentra afuera de toda la jeraquía de carpetas y se encuentra
al mismo nivel que el Makefile. Corresponde al core del proyecto e incorpora los
archivos del *z-config* y los *main.tex* de cada directorio.

main.tex generales
-----------------------------
Se encuentran al interior de cada directorio correspondiente a un capítulo. Estos
archivos definen el título del capitulo, incorporación de los textos modulares
a compilar y su orden en el pdf.

Este archivo debe ser creado en cada directorio de capítulo para facilitar la
modularización del proyecto.
