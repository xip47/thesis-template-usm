=============================
Archivos de configutación
=============================
El z-config
-----------------------------
Dentro de este directorio se encuentran 4 archivos que serán descritos para su
comprensión y correcto uso del template.

data.tex
+++++++++++++++++++++++++++++
Se encuentran los campos de texto reemplazables y usados por el archivo *macros.tex*.
Los comandos se definen de la siguiente forma:

.. code-block:: LaTeX

   \newcommand{\nombrecomando}{texto que representa el comando}

De esta forma se aislan los datos de las estructuras que se creen en el archivo
*macros.tex*.

macros.tex
+++++++++++++++++++++++++++++
Almacena la configuración de las macros creadas independiente de los datos que
albergue en sus estructuras, por ejemplo la macro de *\portada* contiene la construcción
completa de la porta junto a su diseño, pero la información reemplazable se encuentra
en el archivo *data.text*. Por tanto, este archivo es rara vez modificable.

packages.tex
+++++++++++++++++++++++++++++
Todos los paquetes necesarios para el desarrollo del documento se incorporan en este
archivo, son ordenados por su utilidad para ser identificados fácilmente y hacer
más comprensible el documento en general.

structure.tex
+++++++++++++++++++++++++++++
Es el archivo encargado de configurar el diseño y estructura general del documento.
En este archivo se encuentran los estilos de listing, mintex, configuración de la
tabla de contenido, ubicación de los archivos de imágenes, entre otros.
