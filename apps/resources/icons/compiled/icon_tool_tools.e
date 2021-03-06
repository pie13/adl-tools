note
	description: "Icon loader class generated by icondbc"
	keywords:    "Embedded icons"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2013- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ICON_TOOL_TOOLS

inherit
	ICON_SOURCE

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization
		do
			key := "tool/tools"
			make_with_size (16, 16)
			fill_memory
		end

feature {NONE} -- Image data
	
	c_colors_0 (a_ptr: POINTER; a_offset: INTEGER)
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"{
				{
					#define B(q) #q
					#ifdef EIF_WINDOWS
						#define A(a,r,g,b) B(\x##b\x##g\x##r\x##a)
					#else
						#define A(a,r,g,b) B(\x##r\x##g\x##b\x##a)
					#endif

					char l_data[] =
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(15,B3,B3,B3) A(8F,AA,AA,AA) A(A2,90,8F,8F) A(34,B0,B0,B0) A(F7,99,98,98) A(DA,83,82,82) 
					A(32,A2,A2,A1) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(51,B2,B1,B1) A(FF,9A,99,99) A(FE,98,97,97) A(E1,9F,9F,9E) A(FF,9B,9A,9A) A(FF,77,76,76) A(43,96,95,95) A(42,A2,A1,A1) A(1B,A8,A8,A7) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(33,B0,B0,B0) A(E0,96,95,95) A(D1,9F,9F,9E) A(FF,9B,9A,9A) A(FF,9D,9C,9C) A(FF,97,97,96) 
					A(FF,90,8F,8F) A(FF,9A,99,99) A(F0,96,95,95) A(FF,95,94,94) A(D9,72,71,71) A(0D,AF,AF,AF) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(A8,A3,A3,A3) A(FF,96,95,95) A(FF,98,98,97) A(FF,9B,9A,9A) A(FF,9D,9D,9C) A(FF,95,95,94) A(FF,8D,8D,8C) A(FF,9A,99,99) A(FF,98,97,97) A(FF,96,95,95) 
					A(F2,66,65,65) A(15,AA,A9,A9) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(5B,AD,AC,AC) A(FF,95,94,94) A(FF,98,97,97) A(FF,88,87,86) 
					A(EF,59,57,56) A(B8,6F,6E,6D) A(EE,7F,7E,7D) A(FF,96,95,95) A(FF,97,96,96) A(FF,94,93,93) A(BE,80,7F,7F) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(66,A6,A6,A6) A(E5,95,94,94) A(FF,93,92,92) A(FF,85,84,83) A(E8,38,36,34) A(1D,9D,9D,9D) A(00,00,00,00) A(17,A8,A8,A8) A(D8,7F,7E,7D) 
					A(FF,95,94,94) A(FF,92,91,91) A(FD,89,88,88) A(BB,8E,8D,8D) A(52,A0,A0,A0) A(00,00,00,00) A(00,00,00,00) A(BD,97,96,96) A(FF,89,88,88) A(FF,7D,7B,7B) 
					A(FF,5E,5B,5A) A(7C,6C,6A,69) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(47,A2,A2,A2) A(FF,7F,7E,7D) A(FF,8F,8E,8E) A(FF,8A,89,89) A(FF,80,7F,7F) 
					A(B9,81,80,80) A(00,00,00,00) A(00,00,00,00) A(35,AC,AC,AC) A(F0,8B,8A,89) A(FF,76,76,75) A(FF,60,5E,5D) A(4B,85,84,84) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(03,B1,B1,B1) A(F4,78,76,75) A(FF,8A,8A,89) A(FF,84,83,83) A(E8,69,69,68) A(45,92,91,91) A(00,00,00,00) A(00,00,00,00) A(0E,B1,B1,B1) 
					A(E0,8B,8B,8A) A(FF,7D,7D,7C) A(FF,70,6F,6E) A(54,8B,8A,8A) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(E1,76,74,73) A(FF,85,85,84) 
					A(FF,7A,7A,79) A(AD,70,6F,6F) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(80,98,98,98) A(FF,7D,7D,7C) A(FF,81,80,80) A(FF,75,74,73) A(92,8B,8A,8A) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(0A,B1,B1,B1) A(F9,74,73,72) A(FF,68,67,66) A(FF,7B,7B,7A) A(F4,67,66,66) A(57,89,89,88) A(00,00,00,00) 
					A(00,00,00,00) A(40,A2,A2,A2) A(E0,7C,7C,7B) A(FF,7B,7B,7A) A(FF,6E,6D,6D) A(F5,95,94,94) A(27,A9,A9,A9) A(00,00,00,00) A(00,00,00,00) A(70,9C,9B,9A) 
					A(FF,74,73,72) A(FF,78,77,76) A(FF,75,75,74) A(FE,60,5F,5E) A(A1,57,54,54) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(08,B1,B1,B1) A(F8,72,72,71) 
					A(FF,76,76,75) A(FF,73,72,72) A(EC,95,94,94) A(85,A8,A8,A8) A(94,9D,9D,9C) A(FB,77,76,75) A(FF,75,75,74) A(FF,72,71,70) A(F9,47,45,44) A(75,7B,7A,7A) 
					A(30,93,93,92) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(29,A2,A2,A2) A(FF,68,68,67) A(FF,6D,6C,6B) A(FF,6F,6F,6E) A(FF,6A,69,68) A(FF,70,6F,6F) 
					A(FF,75,75,74) A(FF,6F,6F,6E) A(FF,6C,6C,6B) A(FF,64,63,62) A(D4,56,55,54) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(AD,6F,6E,6E) A(DE,53,52,51) A(F9,64,63,63) A(FF,5B,5A,5A) A(FF,68,67,66) A(FF,67,66,65) A(FF,65,65,64) A(FF,5C,5B,5A) A(FF,60,5F,5E) 
					A(FE,3C,3A,39) A(20,A2,A2,A2) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(01,AE,AE,AE) A(D8,60,5F,5E) 
					A(FF,59,58,57) A(F6,4D,4C,4B) A(FF,5D,5D,5C) A(FF,4B,49,48) A(94,62,61,60) A(A9,5A,58,58) A(64,74,73,73) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) 
					A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(44,90,8F,8F) A(AB,5A,59,58) A(4E,85,84,83) A(E0,4D,4C,4A) A(E5,46,45,44) 
					A(4F,8E,8E,8E) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) A(00,00,00,00) ;
					memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
				}
			}"
		end

	build_colors (a_ptr: POINTER)
			-- Build `colors'
		do
			c_colors_0 (a_ptr, 0)
		end

end