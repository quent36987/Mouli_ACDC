SRC=src/scriptpy.py
DOSSIER=TP3_Test

all : clean clone add

setup:
	sudo apt update
	sudo apt install python3-pip
	sudo pip install GitPython
	sudo apt install ocaml-nox

clone:
	python3 ./$(SRC) clone 3 TP_Clone/$(DOSSIER)

add:
	python3 ./$(SRC) add_line TP_Clone/$(DOSSIER)  list_tools.ml
	python3 ./$(SRC) add_line TP_Clone/$(DOSSIER)  histo.ml
	python3 ./$(SRC) add_line TP_Clone/$(DOSSIER)  matrix_patterns.ml

try:


clean:
	rm -r -f $(DOSSIER)


