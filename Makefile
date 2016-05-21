# Constructor Informes LaTeX
# Author Abdel Rjoas
# By Xip 2014
# ================================
#
# Construye el PDF
# $ make
#
# Abre el PDF
# $ make run
#
# Compila y comprime la carpeta del PDF y sus fuentes
# $ make tar
#
# Borra todos los archivos compilados dejando solo los fuentes
# $ make clean

# =================================
# === PARAMETROS DE COMPILACIÓN ===
# =================================
NAME = main 															# Nombre del Fuente Tex
TARNAME = memoria														# Nombre Tarball
TARFOLDER = thesis-usm													# Nombre Carpeta para compresión
TEXT = $(NAME).tex														# Tex
PDF = $(addsuffix .pdf, $(basename $(NAME)))							# PDF
TARCOMPRESS = $(addsuffix .tar.gz, $(basename $(TARNAME)))				# Tarball
MVFOLDER = $(addsuffix /*, $(basename $(TARFOLDER)))					# Carpeta Temporal
CC = pdflatex															# Compilador
APPREAD = xdg-open														# Aplicación de lectura
ERRLOG = -interaction nonstopmode										# Modo de compilación
ERRLOG += -file-line-error -halt-on-error								# Modo de errores
ERRFILTER := > /dev/null || (egrep ':[[:digit:]]+:' *.log && false)		# Filtro de compilación

# =================================
# ===    FUNCIONES OBJETIVOS    ===
# =================================
all: $(TEXT)

$(TEXT):
	@$(CC) $(ERRLOG) $(TEXT) $(ERRFILTER)
	@$(CC) $(ERRLOG) $(TEXT) $(ERRFILTER)
	@+if test -f *.toc; then rm *.toc && echo "*.toc ELIMINADO"; fi
	@+if test -f *.aux; then rm *.aux && echo "*.aux ELIMINADO"; fi
	@+if test -f *.log; then rm *.log && echo "*.log ELIMINADO"; fi
	@+if test -f *~; then rm *~ && echo "*~ ELIMINADO"; fi
	@+echo "------------------------------------------"
	@+echo "COMPILACIÓN DEL PDF CORRECTA - By Xip 2014"
	@+echo "------------------------------------------"

make run:
	@$(APPREAD) $(PDF)

tar: $(TEXT)
	@mkdir ../compresor
	@mv * ../compresor
	@mv ../compresor $(TARFOLDER)
	@tar -czvf $(TARCOMPRESS) $(TARFOLDER) > /dev/null
	@mv $(MVFOLDER) .
	@rm -R $(TARFOLDER)
	@+echo "------------------------------------------"
	@+echo "COMPRESIÓN FINALIZADA - By Xip 2014"
	@+echo "------------------------------------------"

make clean:
	@+if test -f *.toc; then rm *.toc && echo "*.toc ELIMINADO"; fi
	@+if test -f *.aux; then rm *.aux && echo "*.aux ELIMINADO"; fi
	@+if test -f *.log; then rm *.log && echo "*.log ELIMINADO"; fi
	@+if test -f *~; then rm *~ && echo "*~ ELIMINADO"; fi
	@+if test -f $(PDF); then rm $(PDF) && echo "$(PDF) ELIMINADO"; fi
	@+if test -f $(TARCOMPRESS); then rm $(TARCOMPRESS) && echo "$(TARCOMPRESS) ELIMINADO"; fi
	@+echo "------------------------------------------"
	@+echo "LIMPIEZA FINALIZADA - By Xip 2014"
	@+echo "------------------------------------------"
