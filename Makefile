NAME=basicQueries

default: pdf

dvi: $(NAME).dvi

$(NAME).dvi: $(NAME).tex
	latex $(NAME).tex
	# Run latex twice for references
	latex $(NAME).tex

pdf: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	pdflatex $(NAME).tex
	# Run latex twice for references
	pdflatex $(NAME).tex

clean:
	rm -f *~ $(addprefix $(NAME).,aux dvi log pdf)

