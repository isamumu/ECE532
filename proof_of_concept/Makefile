all:
	gcc main.c dct.c transpose.c quantization.c encoder.c -lm -o proof_of_concept

pipeline:
	gcc pipeline.c dct.c encoder.c quantization.c transpose.c -o pipeline -lm