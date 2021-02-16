
.ONESHELL:

testfloat/build:
	git clone https://github.com/ucb-bar/berkeley-softfloat-3.git
	git clone https://github.com/ucb-bar/berkeley-testfloat-3.git
	
	cd berkeley-softfloat-3/build/Linux-x86_64-GCC/
	SPECIALIZE_TYPE=RISCV make -j$(nproc)
	
	cd ../../../berkeley-testfloat-3/build/Linux-x86_64-GCC/
	make -j$(nproc)
	sudo cp testfloat_gen /usr/bin/

