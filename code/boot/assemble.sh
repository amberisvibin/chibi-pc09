lwasm --format=srec --output=boot.s19 boot.s
objcopy --input-target=srec --output-target=binary boot.s19 boot.bin
#mot2bin -out boot.bin boot.s19
