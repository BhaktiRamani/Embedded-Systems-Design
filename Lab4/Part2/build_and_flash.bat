echo Clean the module
make clean
echo Build the module
make
echo Flah the module to target
batchisp -device at89c51rc2 -hardware RS232 -port COM4 -baudrate 57600 -operation loadbuffer memory_allocator.hex program verify start reset 1