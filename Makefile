.PHONY: fmt

fmt: 
	R -e "styler::style_dir('R', style = styler::mlr_style)"
