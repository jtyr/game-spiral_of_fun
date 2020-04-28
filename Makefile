GS = gs
INKSCAPE = inkscape
RM_F = rm -f

release: SpiralOfFun.pdf

SpiralOfFun.pdf: SpiralOfFun-board.pdf SpiralOfFun-cards.pdf
	$(GS) -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER -sOutputFile=$@ $^
	$(RM_F) $^

SpiralOfFun-board.pdf:
	$(INKSCAPE) --export-pdf=$@ $(subst .pdf,.svg,$@)

SpiralOfFun-cards.pdf:
	$(INKSCAPE) --export-pdf=$@ $(subst .pdf,.svg,$@)

clear:
	$(RM_F) *.pdf
