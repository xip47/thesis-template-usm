=============================
Nuevo Capítulo
=============================
Para crear un nuevo capítulo en el template de memoria se den seguir siempre los
mismo pasos.

Crear Carpeta de Capítulo
-----------------------------
Crear carpeta en directorio raíz del proyecto con una enumeración para identificar
fácilmente el orden dentro del documento segudido de un nombre representativo.
Ejemplo: para crear el capítulo 7 que aborde la  conclusión, se crea una carpeta
con el nombre de *07-conclusion*.

Crear Archivo de Sección
-----------------------------
Crear archivo inicial de la sección dentro de la carpeta creada enumerandolo
según el orden en que se incorporará al pdf. Por ejemplo: *01-conclusiones-experimento.tex*,
el cual estaría ubicado en *07-conclusion/01-conclusiones-experimento.tex*.

Crear Archivo main.tex
-----------------------------
Crear archivo *main.tex* dentro de la carpeta del capítulo. El contenido de este
archivo debe ser el nombre del capítulo seguido de una introducción del mismo y
posteriormente los imputs de los archivos de las secciones agregadas. Ejemplo:

.. code-block:: LaTeX

   \chatper{Conclusión}
   A continuación se presentan las conclusiones obtenidas por el objeto de estudio...

   \input{07-conclusion/01-conclusiones-experimento}
