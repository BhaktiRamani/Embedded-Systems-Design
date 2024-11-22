 # ---------------------------------------------------------------------------------
 # Induja Narayanan 
 # ECEN 5613 - Fall 2024
 # University of Colorado Boulder
 # Revised 10/10/2024
 #  --------------------------------------------------------------------------------
 # This file 
 # 1) Builds the component with sdcc
 # 2) Cleans the component
 # ---------------------------------------------------------------------------------
# Define the code location
ifndef CODE_LOC
CODE_LOC = 0x2000
endif

ifndef HEAP_SIZE
HEAP_SIZE = 0x1400
endif

ifndef CODE_SIZE
CODE_SIZE = 0x8000
endif

ifndef XRAM_LOC
XRAM_LOC = 0x0400
endif

ifndef XRAM_SIZE
XRAM_SIZE = 0x7BFF
endif

# Define the output directory and target
TARGET = lcd_demo.hex
SRC = $(wildcard src/*.c)
INC = inc

# Object files derived from source files
OBJS = $(SRC:src/%.c=%.rel)

# Default target
all: $(TARGET)

# Rule to compile _heap.c with the specified heap size
_heap.rel: _heap.c
	sdcc _heap.c -c -mmcs51 --model-large --std-sdcc99  -mmcs51 --verbose -D HEAP_SIZE=$(HEAP_SIZE) -o $@

# Rule to create the target from object files
$(TARGET): $(OBJS) _heap.rel
	sdcc _heap.rel -DDEBUG  -mmcs51 --code-loc $(CODE_LOC) --code-size $(CODE_SIZE) --xram-loc $(XRAM_LOC) --xram-size $(XRAM_SIZE) --verbose --model-large --out-fmt-ihx -o $@ $(OBJS)

# Rule to compile .c files into .rel files
%.rel: src/%.c
	sdcc $< -c -mmcs51 -DDEBUG --model-large  -mmcs51 --std-sdcc99 --verbose -I$(INC) -o $@

# Clean target to remove generated files
clean:
	rm -f $(OBJS) $(TARGET) *.mem *.map *.sym *.asm *.lst *.rst *.lk *.rel *.hex
