set_attribute information_level 5 /

set_attribute lib_search_path  { 
		\/cad/tech/umc90/FSD0A_A_GENERIC_CORE_1D0V/FrontEnd/synopsys 	\
		/cad/tech/umc90/FSD0A_A_GENERIC_CORE_1D0V/BackEnd/lef }

set_attribute library { fsd0a_a_generic_core_tt1v25c.lib } /

set_attribute hdl_search_path $env(HOME)/<tu wpisujemy katalog gdzie sa pliki .vhd>

read_hdl -vhdl { <tu wpisujemy nazwy plikow np.: shift.vhd> } 

set PROJEKT <tu wpisujemy nazwe projektu np.: shifter>

elaborate ${PROJEKT}

synthesize -to_mapped -effort high ${PROJEKT}

report gates  >  ${PROJEKT}_gates.txt

write_hdl -mapped ${PROJEKT} > ${PROJEKT}.v

exit
