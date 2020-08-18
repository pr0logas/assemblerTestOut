#:: Author: Tomas Andriekus
#:: Date: 2020-08-18

pname = "myproject"

all: compile_project

compile_project:
	@nasm -f elf64 $(pname).asm && ld -o $(pname) $(pname).o 	# Use nasm compiler and linker to convert to binary

clean:
	@rm -f $(pname).o $(pname)
