=============================
Acondicionando la Portada
=============================
La portada de memoria se encuentra diseñada con el formato estándar de acuerdo
a los requisitos impuestos por la Universidad Técnica Federico Santa María.

Para cambiar la información expuesta en el template, se deben reemplazar los
campos que se encuentran en el archivo *data.tex* del *z-config* por los deseados.

Los comentarios del documento podrán guiarte en las modificaciones.

Crear un diseño de la portada
.............................
El diseño completo de la portada se encuentra definido por el comando *\portada*
en el archivo *macros.tex*, y a su vez, recoge los datos de *data.tex* para
rellenar los campos.

Es posible crear nuevas instancias de portadas creando un nuevo comando que
incorpore los datos pero con distintos diseños. Para hacer esto, basta con crear
en el archivo *macros.tex* un nuevo bloque que defina el comando nuevo, como por
ejemplo lo siguiente:

.. code-block:: LaTeX

   \newcommand{\portadanueva}
   {
       \begin{titlepage}
           % Código que incorpore el diseño usando macros con los datos
           % ubicados en data.tex
       \end{titlepage}
   }

Luego para que el template reconozca y use la nueva portada, debe ser reemplazado
el comando **\portada** ubicado en el archivo *main.tex* principal del proyecto
por el nuevo comando que define la portada creada.
