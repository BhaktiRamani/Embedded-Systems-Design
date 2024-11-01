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

# # Define your variables if needed
# DEVICE = at89c51rc2
# HARDWARE = RS232
# PORT = COM4
# BAUDRATE = 57600
# HEX_FILE = syntax.hex



# Compile phase
high_speed_output.rel : high_speed_output.c
	sdcc -I/home/bhakti/Downloads/sdcc/share/sdcc/include -c -mmcs51 --std-sdcc99 --verbose --model-large high_speed_output.c

# 	# Compile heap.c
# heap.rel:_heap.c
# 	sdcc --model-large -c _heap.c -D HEAP_SIZE=5120


# Link phase
prog.hex : high_speed_output.rel
	sdcc --code-loc 0x4000 --code-size 0x8000 --xram-loc 0x0400 --xram-size 0x7BFF --model-large --out-fmt-ihx high_speed_output.rel
	packihx high_speed_output.ihx > high_speed_output.hex


# # Define the batchisp command as a target
# flash:
# 	batchisp -device $(DEVICE) -hardware $(HARDWARE) -port $(PORT) -baudrate $(BAUDRATE) -operation loadbuffer $(HEX_FILE) program verify start reset 1

clean:
	rm *.rel *.lst *.rst *.hex *.mem *.map *.sym *.lnk *.ihx *.hex *.asm *.Ik










