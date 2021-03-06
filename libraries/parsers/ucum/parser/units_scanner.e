note
	component:   "openEHR ADL Tools"
	description: "[
			 Scanner for unit strings conforming to the Unified Code for Units
	             of Measure (UCUM), developed by Gunther Schadow and Clement J. McDonald
	             of The Regenstrief Institute For Health Care, Indianapolis. Published at
	             http://aurora.rg.iupui.edu/UCUM.
			 ]"
	keywords:    "units, UCUM"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2003 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"


class UNITS_SCANNER

inherit
	YY_COMPRESSED_SCANNER_SKELETON
		rename
			make as make_compressed_scanner_skeleton,
			reset as reset_compressed_scanner_skeleton,
			output as print_out
		end

	UNITS_TOKENS
		export
			{NONE} all
		end

	UT_CHARACTER_CODES
		export
			{NONE} all
		end

	KL_IMPORTED_INTEGER_ROUTINES
	KL_IMPORTED_STRING_ROUTINES
	KL_SHARED_PLATFORM
	KL_SHARED_EXCEPTIONS
	KL_SHARED_ARGUMENTS

create
	make

feature -- Status report

	valid_start_condition (sc: INTEGER): BOOLEAN
			-- Is `sc' a valid start condition?
		do
			Result := (sc = INITIAL)
		end

feature {NONE} -- Implementation

	yy_build_tables
			-- Build scanner tables.
		do
			yy_nxt := yy_nxt_template
			yy_chk := yy_chk_template
			yy_base := yy_base_template
			yy_def := yy_def_template
			yy_ec := yy_ec_template
			yy_meta := yy_meta_template
			yy_accept := yy_accept_template
		end

	yy_execute_action (yy_act: INTEGER)
			-- Execute semantic action.
		do
if yy_act <= 9 then
if yy_act <= 5 then
if yy_act <= 3 then
if yy_act <= 2 then
if yy_act = 1 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 57")
end
last_token := Plus_code
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 58")
end
last_token := Minus_code
end
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 59")
end
last_token := Slash_code
end
else
if yy_act = 4 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 60")
end
last_token := Star_code
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 61")
end
last_token := Caret_code
end
end
else
if yy_act <= 7 then
if yy_act = 6 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 63")
end
last_token := SYM_OPEN_PAREN
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 64")
end
last_token := SYM_CLOSE_PAREN
end
else
if yy_act = 8 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 65")
end
last_token := SYM_START_SUFFIX
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 66")
end
last_token := SYM_END_SUFFIX
end
end
end
else
if yy_act <= 13 then
if yy_act <= 11 then
if yy_act = 10 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 67")
end
last_token := SYM_START_ANNOT
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 68")
end
last_token := SYM_END_ANNOT
end
else
if yy_act = 12 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 72")
end

					last_token := V_IDENTIFIER
					last_string_value := text
			
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 78")
end

					last_token := V_INTEGER
					last_integer_value := text.to_integer
			
end
end
else
if yy_act <= 15 then
if yy_act = 14 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 83")
end

					last_token := V_INTEGER
					str_ := text
					nb_ := text_count
					from i_ := 1 until i_ > nb_ loop
						char_ := str_.item (i_)
						in_buffer.append_character (char_)
						i_ := i_ + 1
					end
					last_integer_value := in_buffer.to_integer
					in_buffer.wipe_out
			
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 97")
end
 last_token := Semicolon_code; terminate 
end
else
if yy_act = 16 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 98")
end
;
else
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 0")
end
default_action
end
end
end
end
		end

	yy_execute_eof_action (yy_sc: INTEGER)
			-- Execute EOF semantic action.
		do
			inspect yy_sc
when 0 then
debug ("GELEX")
	std.error.put_line ("Executing scanner user-code from file 'units_scanner.l' at line 0")
end
terminate
			else
				terminate
			end
		end

feature {NONE} -- Table templates

	yy_nxt_template: SPECIAL [INTEGER]
		once
			Result := yy_fixed_array (<<
			    0,    4,    5,    6,    7,    8,    9,    4,   10,   11,
			   12,   13,   14,   15,   16,   17,   18,   19,   21,   21,
			   21,   21,   22,   24,   26,   26,   27,   25,   23,   20,
			   20,   28,    3,   28,   28,   28,   28,   28,   28,   28,
			   28,   28,   28,   28,   28,   28,   28,   28,   28,   28, yy_Dummy>>)
		end

	yy_chk_template: SPECIAL [INTEGER]
		once
			Result := yy_fixed_array (<<
			    0,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,   13,   22,
			   24,   27,   13,   22,   24,   26,   25,   23,   21,   20,
			    6,    3,   28,   28,   28,   28,   28,   28,   28,   28,
			   28,   28,   28,   28,   28,   28,   28,   28,   28,   28, yy_Dummy>>)
		end

	yy_base_template: SPECIAL [INTEGER]
		once
			Result := yy_fixed_array (<<
			    0,    0,    0,   31,   32,   32,   27,   32,   32,   32,
			   32,   32,   32,   11,   32,   32,   32,   32,   32,   32,
			   26,   17,   12,   16,   13,   15,   14,   14,   32, yy_Dummy>>)
		end

	yy_def_template: SPECIAL [INTEGER]
		once
			Result := yy_fixed_array (<<
			    0,   28,    1,   28,   28,   28,   28,   28,   28,   28,
			   28,   28,   28,   28,   28,   28,   28,   28,   28,   28,
			   28,   28,   28,   28,   28,   28,   28,   28,    0, yy_Dummy>>)
		end

	yy_ec_template: SPECIAL [INTEGER]
		once
			Result := yy_fixed_array (<<
			    0,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    2,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    3,    1,    1,
			    4,    5,    1,    6,    7,    8,    9,   10,   11,   11,
			   11,   11,   11,   11,   11,   11,   11,   11,    1,   12,
			    1,    1,    1,    1,    1,    3,    3,    3,    3,    3,
			    3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
			    3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
			    3,   13,    1,   14,   15,    3,    1,    3,    3,    3,

			    3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
			    3,    3,    3,    3,    3,    3,    3,    3,    3,    3,
			    3,    3,    3,   16,    1,   17,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,

			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1, yy_Dummy>>)
		end

	yy_meta_template: SPECIAL [INTEGER]
		once
			Result := yy_fixed_array (<<
			    0,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1, yy_Dummy>>)
		end

	yy_accept_template: SPECIAL [INTEGER]
		once
			Result := yy_fixed_array (<<
			    0,    0,    0,   18,   16,   17,   12,    6,    7,    1,
			    2,    4,    3,   13,   15,    8,    9,    5,   10,   11,
			   12,    0,   13,    0,   13,    0,   13,   14,    0, yy_Dummy>>)
		end

feature {NONE} -- Constants

	yyJam_base: INTEGER = 32
			-- Position in `yy_nxt'/`yy_chk' tables
			-- where default jam table starts

	yyJam_state: INTEGER = 28
			-- State id corresponding to jam state

	yyTemplate_mark: INTEGER = 29
			-- Mark between normal states and templates

	yyNull_equiv_class: INTEGER = 1
			-- Equivalence code for NULL character

	yyReject_used: BOOLEAN = false
			-- Is `reject' called?

	yyVariable_trail_context: BOOLEAN = false
			-- Is there a regular expression with
			-- both leading and trailing parts having
			-- variable length?

	yyReject_or_variable_trail_context: BOOLEAN = false
			-- Is `reject' called or is there a
			-- regular expression with both leading
			-- and trailing parts having variable length?

	yyNb_rules: INTEGER = 17
			-- Number of rules

	yyEnd_of_buffer: INTEGER = 18
			-- End of buffer rule code

	yyLine_used: BOOLEAN = false
			-- Are line and column numbers used?

	yyPosition_used: BOOLEAN = false
			-- Is `position' used?

	INITIAL: INTEGER = 0
			-- Start condition codes

feature -- User-defined features



feature {NONE} -- Local variables

	i_, nb_: INTEGER
	char_: CHARACTER
	str_: STRING
	code_: INTEGER

feature {NONE} -- Initialization

	make
			-- Create a new scanner.
		do
			make_compressed_scanner_skeleton
			create in_buffer.make (Init_buffer_size)
			in_lineno := 1
		end

feature -- Initialization

	reset
			-- Reset scanner before scanning next input.
		do
			reset_compressed_scanner_skeleton
			in_lineno := 1
			in_buffer.wipe_out
		end

feature -- Access

	in_buffer: STRING
			-- Buffer for lexial tokens

	in_lineno: INTEGER
			-- Current line number

	is_operator: BOOLEAN
			-- Parsing an operator declaration?

feature {NONE} -- Constants

	Init_buffer_size: INTEGER = 256
				-- Initial size for `in_buffer'

invariant
	in_buffer_not_void: in_buffer /= Void

end

