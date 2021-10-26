SRC=src/scriptpy.py

all : setup clone add

setup:
	sudo apt update
	sudo apt install python3-pip
	sudo pip install GitPython
	sudo apt install ocaml-nox

clone:
	python3 ./$(SRC) clone 3 TP_Clone/TP3_26_10

add:
	python3 ./$(SRC) add_line TP_Clone/TP3_26_10 list_tools.ml
	python3 ./$(SRC) add_line TP_Clone/TP3_26_10 histo.ml
	python3 ./$(SRC) add_line TP_Clone/TP3_26_10 matrix_patterns.ml

