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

# Basic git operations
git-add:
	git add .

# Commit with a message (usage: make git-commit m="your message")
git-commit:
	@if [ "$(m)" = "" ]; then \
		echo "Please provide a commit message using m=\"your message\""; \
		exit 1; \
	else \
		git commit -m "$(m)"; \
	fi

# Push to current branch
git-push:
	git push origin $$(git rev-parse --abbrev-ref HEAD)

# Combined target for all operations (usage: make git-all m="your message")
git-all: git-add git-commit git-push

# Compile phase
syntax.rel : syntax.c
	sdcc -I/home/bhakti/Downloads/sdcc/share/sdcc/include -c -mmcs51 --std-sdcc99 --verbose --model-large syntax.c

# 	# Compile heap.c
heap.rel:_heap.c
	sdcc --model-large -c _heap.c -D HEAP_SIZE=5600


# Link phase
prog.hex : syntax.rel heap.rel
	sdcc --code-loc 0x3000 --code-size 0x8000 --xram-loc 0x0400 --xram-size 0x7BFF --model-large --out-fmt-ihx syntax.rel _heap.rel
	packihx syntax.ihx > syntax.hex


# # Define the batchisp command as a target
# flash:
# 	batchisp -device $(DEVICE) -hardware $(HARDWARE) -port $(PORT) -baudrate $(BAUDRATE) -operation loadbuffer $(HEX_FILE) program verify start reset 1

clean:
	rm *.rel *.lst *.rst *.hex *.mem *.map *.sym *.lnk *.ihx *.hex *.asm *.lk










