# Makefile para compilar la presentacion en LaTeX

# Nombre del archivo principal (sin extension)
TARGET = presentacion

# Regla por defecto
all: $(TARGET).pdf

# Regla para generar el PDF
$(TARGET).pdf: $(TARGET).tex
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

# Regla para limpiar archivos temporales
clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc $(TARGET).pdf

.PHONY: all clean
