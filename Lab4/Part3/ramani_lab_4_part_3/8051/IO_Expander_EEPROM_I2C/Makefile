################################################################################
# GNU makefile for SDCC Project with Debug Options
################################################################################

# Directories
SRC_DIR = src
INC_DIR = inc
BUILD_DIR = build

# Tools and flags
CC = sdcc
CFLAGS = -I$(INC_DIR) -I/home/bhakti/Downloads/sdcc/share/sdcc/include \
         -mmcs51 --std-sdcc99 --model-large

# Debug flags - add --verbose for more detailed output
DEBUG_FLAGS = --verbose

# Find all source files
SRC = $(wildcard $(SRC_DIR)/*.c)
# Generate object file names
OBJ = $(SRC:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.rel)
# Final output files
HEX = $(BUILD_DIR)/prog.hex
IHX = $(BUILD_DIR)/prog.ihx

# Default target
all: check-symbols setup $(HEX)

# Create necessary directories
setup:
	@mkdir -p $(BUILD_DIR)

# New target to check for duplicate symbols
check-symbols:
	@echo "Checking for potential duplicate symbols..."
	@for file in $(SRC); do \
		echo "\nAnalyzing $$file:"; \
		grep -n "^[[:space:]]*[[:alnum:]_]\+[[:space:]]\+[[:alnum:]_]\+[[:space:]]*=\|^[[:space:]]*[[:alnum:]_]\+[[:space:]]\+[[:alnum:]_]\+[[:space:]]*(" $$file | sed 's/^/  /'; \
	done
	@echo "\nChecking for duplicate function definitions..."
	@for file in $(SRC); do \
		sdcc -E $$file 2>&1 | grep "function\|variable" || true; \
	done

# Compile phase with more detailed output
$(BUILD_DIR)/%.rel: $(SRC_DIR)/%.c
	@echo "\nCompiling $<..."
	@echo "Dependencies:"
	@sdcc -E -I$(INC_DIR) $< | grep "#include" | sed 's/^/  /'
	$(CC) $(CFLAGS) $(DEBUG_FLAGS) -c $< -o $@

# Link phase with symbol analysis
$(HEX): $(OBJ)
	@echo "\nLinking objects..."
	@echo "Object files being linked:"
	@for obj in $(OBJ); do echo "  $$obj"; done
	$(CC) --code-loc 0x2000 --code-size 0x8000 \
	      --xram-loc 0x0400 --xram-size 0x7BFF \
	      --model-large --out-fmt-ihx \
	      $(DEBUG_FLAGS) \
	      $(OBJ) -o $(IHX)
	@echo "\nChecking for multiple definitions in object files..."
	@for obj in $(OBJ); do \
		echo "\nSymbols in $$obj:"; \
		sdar -t $$obj 2>/dev/null | grep -v "^$$" | sed 's/^/  /'; \
	done
	packihx $(IHX) > $(HEX)

# Debug target to show all variables and symbols
debug-info:
	@echo "Source files:"
	@for src in $(SRC); do echo "  $$src"; done
	@echo "\nHeader files:"
	@find $(INC_DIR) -name "*.h" -exec echo "  {}" \;
	@echo "\nObject files:"
	@for obj in $(OBJ); do echo "  $$obj"; done

# Show specific file symbols
show-symbols:
	@if [ "$(file)" = "" ]; then \
		echo "Please specify a file using file=path/to/file"; \
	else \
		echo "Analyzing symbols in $(file)..."; \
		sdcc -E $(file) | grep -A 1 "function\|variable" || true; \
	fi

# Clean generated files
clean:
	rm -rf $(BUILD_DIR)
	rm -f *.asm *.lst *.sym *.lk

# Show help
help:
	@echo "Available targets:"
	@echo "  all          - Build the project (default)"
	@echo "  clean        - Remove generated files"
	@echo "  debug-info   - Show compilation information"
	@echo "  check-symbols- Check for potential duplicate symbols"
	@echo "  show-symbols - Show symbols in specific file (use file=path)"
	@echo ""
	@echo "Debug options:"
	@echo "  make show-symbols file=src/your_file.c"
	@echo "  make debug-info"
	@echo ""
	@echo "Common multiple definition causes:"
	@echo "  1. Variables defined in header files without 'extern'"
	@echo "  2. Functions defined (not just declared) in header files"
	@echo "  3. Same header included multiple times without include guards"
	@echo "  4. Global variables defined in multiple source files"

.PHONY: all setup clean help debug-info check-symbols show-symbols

# Dependencies
-include $(OBJ:.rel=.d)
