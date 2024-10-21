################################################################################
# GNU makefile for SDCC
# File Name: makefile
# Only the targets which apply will be processed by GNU make.
# To create the file 'prog.hex' using GNU make, execute 'make prog.hex'.
# Note: GNU make requires a special format for the makefile:
#       A tab character must be at the beginning of every command line!
################################################################################


# Default target
all: prog.hex


# Compile phase
syntax.rel : syntax.c
	sdcc -I/home/bhakti/Downloads/sdcc/share/sdcc/include -c -mmcs51 --std-sdcc99 --verbose --model-large syntax.c

	# Compile heap.c
heap.rel: _heap.c
	sdcc --model-large -c _heap.c -D HEAP_SIZE=2048

# # Compile _startup.c
# startup.rel: _startup.c
# 	sdcc --model-large -c _startup.c

# Link phase
prog.hex : syntax.rel heap.rel
	sdcc --code-loc 0x3000 --code-size 0x8000 --xram-loc 0x0400 --xram-size 0x7BFF --model-large --out-fmt-ihx syntax.rel _heap.rel

	
clean:
	rm *.rel *.lst *.rst *.hex *.mem *.map *.sym *.lnk *.ihx










