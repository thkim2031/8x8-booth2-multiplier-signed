rm -r work

mkdir work

cd work


vcs -full64 ../../../v_file/8x8_booth2_signed_tb.v ../../../v_file/booth.v ../../../v_file/cra.v  ../../../v_file/partial_product.v  ../../../v_file/full_adder.v  ../../../v_file/half_adder.v  ../../../v_file/top.v  -debug -gui -o simv 

./simv
