note
	component:   "openEHR ADL Tools"
	description: "Validating parser for Archetype Description Language (ADL)"
	keywords:	 "ADL"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2003- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class CADL_VALIDATOR

inherit
	PARSER_VALIDATOR
		rename
			reset as validator_reset,
			make as make_parser_skeleton
		end

	CADL_SCANNER
		rename
			make as make_scanner
		redefine
			reset
		end

	C_COMMON

	ARCHETYPE_TERM_CODE_TOOLS
		export
			{NONE} all
		end

	OPERATOR_TYPES
		export
			{NONE} all
		end

	SHARED_ADL_APP_RESOURCES
		export
			{NONE} all
		end

	SHARED_C_FACTORY
		export
			{NONE} all
		end

	DATE_TIME_ROUTINES
		export
			{NONE} all
		end

	KL_SHARED_EXCEPTIONS
	KL_SHARED_ARGUMENTS

create
	make

feature {NONE} -- Implementation

	yy_build_parser_tables
			-- Build parser tables.
		do
			yytranslate := yytranslate_template
			yyr1 := yyr1_template
			yytypes1 := yytypes1_template
			yytypes2 := yytypes2_template
			yydefact := yydefact_template
			yydefgoto := yydefgoto_template
			yypact := yypact_template
			yypgoto := yypgoto_template
			yytable := yytable_template
			yycheck := yycheck_template
		end

	yy_create_value_stacks
			-- Create value stacks.
		do
		end

	yy_init_value_stacks
			-- Initialize value stacks.
		do
			yyvsp1 := -1
			yyvsp2 := -1
			yyvsp3 := -1
			yyvsp4 := -1
			yyvsp5 := -1
			yyvsp6 := -1
			yyvsp7 := -1
			yyvsp8 := -1
			yyvsp9 := -1
			yyvsp10 := -1
			yyvsp11 := -1
			yyvsp12 := -1
			yyvsp13 := -1
			yyvsp14 := -1
			yyvsp15 := -1
			yyvsp16 := -1
			yyvsp17 := -1
			yyvsp18 := -1
			yyvsp19 := -1
			yyvsp20 := -1
			yyvsp21 := -1
			yyvsp22 := -1
			yyvsp23 := -1
			yyvsp24 := -1
			yyvsp25 := -1
			yyvsp26 := -1
			yyvsp27 := -1
			yyvsp28 := -1
			yyvsp29 := -1
			yyvsp30 := -1
			yyvsp31 := -1
			yyvsp32 := -1
			yyvsp33 := -1
			yyvsp34 := -1
			yyvsp35 := -1
			yyvsp36 := -1
			yyvsp37 := -1
			yyvsp38 := -1
			yyvsp39 := -1
			yyvsp40 := -1
			yyvsp41 := -1
			yyvsp42 := -1
			yyvsp43 := -1
			yyvsp44 := -1
			yyvsp45 := -1
			yyvsp46 := -1
			yyvsp47 := -1
			yyvsp48 := -1
			yyvsp49 := -1
			yyvsp50 := -1
			yyvsp51 := -1
			yyvsp52 := -1
			yyvsp53 := -1
			yyvsp54 := -1
			yyvsp55 := -1
		end

	yy_clear_value_stacks
			-- Clear objects in semantic value stacks so that
			-- they can be collected by the garbage collector.
		do
			if yyvs1 /= Void and yyspecial_routines1 /= Void then
				yyspecial_routines1.keep_head (yyvs1, 0, yyvsp1 + 1)
			end
			if yyvs2 /= Void and yyspecial_routines2 /= Void then
				yyspecial_routines2.keep_head (yyvs2, 0, yyvsp2 + 1)
			end
			if yyvs3 /= Void and yyspecial_routines3 /= Void then
				yyspecial_routines3.keep_head (yyvs3, 0, yyvsp3 + 1)
			end
			if yyvs4 /= Void and yyspecial_routines4 /= Void then
				yyspecial_routines4.keep_head (yyvs4, 0, yyvsp4 + 1)
			end
			if yyvs5 /= Void and yyspecial_routines5 /= Void then
				yyspecial_routines5.keep_head (yyvs5, 0, yyvsp5 + 1)
			end
			if yyvs6 /= Void and yyspecial_routines6 /= Void then
				yyspecial_routines6.keep_head (yyvs6, 0, yyvsp6 + 1)
			end
			if yyvs7 /= Void and yyspecial_routines7 /= Void then
				yyspecial_routines7.keep_head (yyvs7, 0, yyvsp7 + 1)
			end
			if yyvs8 /= Void and yyspecial_routines8 /= Void then
				yyspecial_routines8.keep_head (yyvs8, 0, yyvsp8 + 1)
			end
			if yyvs9 /= Void and yyspecial_routines9 /= Void then
				yyspecial_routines9.keep_head (yyvs9, 0, yyvsp9 + 1)
			end
			if yyvs10 /= Void and yyspecial_routines10 /= Void then
				yyspecial_routines10.keep_head (yyvs10, 0, yyvsp10 + 1)
			end
			if yyvs11 /= Void and yyspecial_routines11 /= Void then
				yyspecial_routines11.keep_head (yyvs11, 0, yyvsp11 + 1)
			end
			if yyvs12 /= Void and yyspecial_routines12 /= Void then
				yyspecial_routines12.keep_head (yyvs12, 0, yyvsp12 + 1)
			end
			if yyvs13 /= Void and yyspecial_routines13 /= Void then
				yyspecial_routines13.keep_head (yyvs13, 0, yyvsp13 + 1)
			end
			if yyvs14 /= Void and yyspecial_routines14 /= Void then
				yyspecial_routines14.keep_head (yyvs14, 0, yyvsp14 + 1)
			end
			if yyvs15 /= Void and yyspecial_routines15 /= Void then
				yyspecial_routines15.keep_head (yyvs15, 0, yyvsp15 + 1)
			end
			if yyvs16 /= Void and yyspecial_routines16 /= Void then
				yyspecial_routines16.keep_head (yyvs16, 0, yyvsp16 + 1)
			end
			if yyvs17 /= Void and yyspecial_routines17 /= Void then
				yyspecial_routines17.keep_head (yyvs17, 0, yyvsp17 + 1)
			end
			if yyvs18 /= Void and yyspecial_routines18 /= Void then
				yyspecial_routines18.keep_head (yyvs18, 0, yyvsp18 + 1)
			end
			if yyvs19 /= Void and yyspecial_routines19 /= Void then
				yyspecial_routines19.keep_head (yyvs19, 0, yyvsp19 + 1)
			end
			if yyvs20 /= Void and yyspecial_routines20 /= Void then
				yyspecial_routines20.keep_head (yyvs20, 0, yyvsp20 + 1)
			end
			if yyvs21 /= Void and yyspecial_routines21 /= Void then
				yyspecial_routines21.keep_head (yyvs21, 0, yyvsp21 + 1)
			end
			if yyvs22 /= Void and yyspecial_routines22 /= Void then
				yyspecial_routines22.keep_head (yyvs22, 0, yyvsp22 + 1)
			end
			if yyvs23 /= Void and yyspecial_routines23 /= Void then
				yyspecial_routines23.keep_head (yyvs23, 0, yyvsp23 + 1)
			end
			if yyvs24 /= Void and yyspecial_routines24 /= Void then
				yyspecial_routines24.keep_head (yyvs24, 0, yyvsp24 + 1)
			end
			if yyvs25 /= Void and yyspecial_routines25 /= Void then
				yyspecial_routines25.keep_head (yyvs25, 0, yyvsp25 + 1)
			end
			if yyvs26 /= Void and yyspecial_routines26 /= Void then
				yyspecial_routines26.keep_head (yyvs26, 0, yyvsp26 + 1)
			end
			if yyvs27 /= Void and yyspecial_routines27 /= Void then
				yyspecial_routines27.keep_head (yyvs27, 0, yyvsp27 + 1)
			end
			if yyvs28 /= Void and yyspecial_routines28 /= Void then
				yyspecial_routines28.keep_head (yyvs28, 0, yyvsp28 + 1)
			end
			if yyvs29 /= Void and yyspecial_routines29 /= Void then
				yyspecial_routines29.keep_head (yyvs29, 0, yyvsp29 + 1)
			end
			if yyvs30 /= Void and yyspecial_routines30 /= Void then
				yyspecial_routines30.keep_head (yyvs30, 0, yyvsp30 + 1)
			end
			if yyvs31 /= Void and yyspecial_routines31 /= Void then
				yyspecial_routines31.keep_head (yyvs31, 0, yyvsp31 + 1)
			end
			if yyvs32 /= Void and yyspecial_routines32 /= Void then
				yyspecial_routines32.keep_head (yyvs32, 0, yyvsp32 + 1)
			end
			if yyvs33 /= Void and yyspecial_routines33 /= Void then
				yyspecial_routines33.keep_head (yyvs33, 0, yyvsp33 + 1)
			end
			if yyvs34 /= Void and yyspecial_routines34 /= Void then
				yyspecial_routines34.keep_head (yyvs34, 0, yyvsp34 + 1)
			end
			if yyvs35 /= Void and yyspecial_routines35 /= Void then
				yyspecial_routines35.keep_head (yyvs35, 0, yyvsp35 + 1)
			end
			if yyvs36 /= Void and yyspecial_routines36 /= Void then
				yyspecial_routines36.keep_head (yyvs36, 0, yyvsp36 + 1)
			end
			if yyvs37 /= Void and yyspecial_routines37 /= Void then
				yyspecial_routines37.keep_head (yyvs37, 0, yyvsp37 + 1)
			end
			if yyvs38 /= Void and yyspecial_routines38 /= Void then
				yyspecial_routines38.keep_head (yyvs38, 0, yyvsp38 + 1)
			end
			if yyvs39 /= Void and yyspecial_routines39 /= Void then
				yyspecial_routines39.keep_head (yyvs39, 0, yyvsp39 + 1)
			end
			if yyvs40 /= Void and yyspecial_routines40 /= Void then
				yyspecial_routines40.keep_head (yyvs40, 0, yyvsp40 + 1)
			end
			if yyvs41 /= Void and yyspecial_routines41 /= Void then
				yyspecial_routines41.keep_head (yyvs41, 0, yyvsp41 + 1)
			end
			if yyvs42 /= Void and yyspecial_routines42 /= Void then
				yyspecial_routines42.keep_head (yyvs42, 0, yyvsp42 + 1)
			end
			if yyvs43 /= Void and yyspecial_routines43 /= Void then
				yyspecial_routines43.keep_head (yyvs43, 0, yyvsp43 + 1)
			end
			if yyvs44 /= Void and yyspecial_routines44 /= Void then
				yyspecial_routines44.keep_head (yyvs44, 0, yyvsp44 + 1)
			end
			if yyvs45 /= Void and yyspecial_routines45 /= Void then
				yyspecial_routines45.keep_head (yyvs45, 0, yyvsp45 + 1)
			end
			if yyvs46 /= Void and yyspecial_routines46 /= Void then
				yyspecial_routines46.keep_head (yyvs46, 0, yyvsp46 + 1)
			end
			if yyvs47 /= Void and yyspecial_routines47 /= Void then
				yyspecial_routines47.keep_head (yyvs47, 0, yyvsp47 + 1)
			end
			if yyvs48 /= Void and yyspecial_routines48 /= Void then
				yyspecial_routines48.keep_head (yyvs48, 0, yyvsp48 + 1)
			end
			if yyvs49 /= Void and yyspecial_routines49 /= Void then
				yyspecial_routines49.keep_head (yyvs49, 0, yyvsp49 + 1)
			end
			if yyvs50 /= Void and yyspecial_routines50 /= Void then
				yyspecial_routines50.keep_head (yyvs50, 0, yyvsp50 + 1)
			end
			if yyvs51 /= Void and yyspecial_routines51 /= Void then
				yyspecial_routines51.keep_head (yyvs51, 0, yyvsp51 + 1)
			end
			if yyvs52 /= Void and yyspecial_routines52 /= Void then
				yyspecial_routines52.keep_head (yyvs52, 0, yyvsp52 + 1)
			end
			if yyvs53 /= Void and yyspecial_routines53 /= Void then
				yyspecial_routines53.keep_head (yyvs53, 0, yyvsp53 + 1)
			end
			if yyvs54 /= Void and yyspecial_routines54 /= Void then
				yyspecial_routines54.keep_head (yyvs54, 0, yyvsp54 + 1)
			end
			if yyvs55 /= Void and yyspecial_routines55 /= Void then
				yyspecial_routines55.keep_head (yyvs55, 0, yyvsp55 + 1)
			end
		end

	yy_push_last_value (yychar1: INTEGER)
			-- Push semantic value associated with token `last_token'
			-- (with internal id `yychar1') on top of corresponding
			-- value stack.
		do
			inspect yytypes2.item (yychar1)
			when 1 then
				yyvsp1 := yyvsp1 + 1
				if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
					if yyvs1 = Void or yyspecial_routines1 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs1")
						end
						create yyspecial_routines1
						yyvsc1 := yyInitial_yyvs_size
						yyvs1 := yyspecial_routines1.make (yyvsc1)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs1")
						end
						yyvsc1 := yyvsc1 + yyInitial_yyvs_size
						yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
					end
				end
				yyspecial_routines1.force (yyvs1, last_detachable_any_value, yyvsp1)
			when 2 then
				yyvsp2 := yyvsp2 + 1
				if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
					if yyvs2 = Void or yyspecial_routines2 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs2")
						end
						create yyspecial_routines2
						yyvsc2 := yyInitial_yyvs_size
						yyvs2 := yyspecial_routines2.make (yyvsc2)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs2")
						end
						yyvsc2 := yyvsc2 + yyInitial_yyvs_size
						yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
					end
				end
				yyspecial_routines2.force (yyvs2, last_string_value, yyvsp2)
			when 3 then
				yyvsp3 := yyvsp3 + 1
				if yyvsp3 >= yyvsc3 or yyvs3 = Void or yyspecial_routines3 = Void then
					if yyvs3 = Void or yyspecial_routines3 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs3")
						end
						create yyspecial_routines3
						yyvsc3 := yyInitial_yyvs_size
						yyvs3 := yyspecial_routines3.make (yyvsc3)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs3")
						end
						yyvsc3 := yyvsc3 + yyInitial_yyvs_size
						yyvs3 := yyspecial_routines3.resize (yyvs3, yyvsc3)
					end
				end
				yyspecial_routines3.force (yyvs3, last_integer_value, yyvsp3)
			when 4 then
				yyvsp4 := yyvsp4 + 1
				if yyvsp4 >= yyvsc4 or yyvs4 = Void or yyspecial_routines4 = Void then
					if yyvs4 = Void or yyspecial_routines4 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs4")
						end
						create yyspecial_routines4
						yyvsc4 := yyInitial_yyvs_size
						yyvs4 := yyspecial_routines4.make (yyvsc4)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs4")
						end
						yyvsc4 := yyvsc4 + yyInitial_yyvs_size
						yyvs4 := yyspecial_routines4.resize (yyvs4, yyvsc4)
					end
				end
				yyspecial_routines4.force (yyvs4, last_real_value, yyvsp4)
			when 5 then
				yyvsp5 := yyvsp5 + 1
				if yyvsp5 >= yyvsc5 or yyvs5 = Void or yyspecial_routines5 = Void then
					if yyvs5 = Void or yyspecial_routines5 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs5")
						end
						create yyspecial_routines5
						yyvsc5 := yyInitial_yyvs_size
						yyvs5 := yyspecial_routines5.make (yyvsc5)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs5")
						end
						yyvsc5 := yyvsc5 + yyInitial_yyvs_size
						yyvs5 := yyspecial_routines5.resize (yyvs5, yyvsc5)
					end
				end
				yyspecial_routines5.force (yyvs5, last_character_value, yyvsp5)
			when 6 then
				yyvsp6 := yyvsp6 + 1
				if yyvsp6 >= yyvsc6 or yyvs6 = Void or yyspecial_routines6 = Void then
					if yyvs6 = Void or yyspecial_routines6 = Void then
						debug ("GEYACC")
							std.error.put_line ("Create yyvs6")
						end
						create yyspecial_routines6
						yyvsc6 := yyInitial_yyvs_size
						yyvs6 := yyspecial_routines6.make (yyvsc6)
					else
						debug ("GEYACC")
							std.error.put_line ("Resize yyvs6")
						end
						yyvsc6 := yyvsc6 + yyInitial_yyvs_size
						yyvs6 := yyspecial_routines6.resize (yyvs6, yyvsc6)
					end
				end
				yyspecial_routines6.force (yyvs6, last_c_domain_type_value, yyvsp6)
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: not a token type: ")
					std.error.put_integer (yytypes2.item (yychar1))
					std.error.put_new_line
				end
				abort
			end
		end

	yy_push_error_value
			-- Push semantic value associated with token 'error'
			-- on top of corresponding value stack.
		local
			yyval1: detachable ANY
		do
			yyvsp1 := yyvsp1 + 1
			if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
				if yyvs1 = Void or yyspecial_routines1 = Void then
					debug ("GEYACC")
						std.error.put_line ("Create yyvs1")
					end
					create yyspecial_routines1
					yyvsc1 := yyInitial_yyvs_size
					yyvs1 := yyspecial_routines1.make (yyvsc1)
				else
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs1")
					end
					yyvsc1 := yyvsc1 + yyInitial_yyvs_size
					yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
				end
			end
			yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
		end

	yy_pop_last_value (yystate: INTEGER)
			-- Pop semantic value from stack when in state `yystate'.
		local
			yy_type_id: INTEGER
		do
			yy_type_id := yytypes1.item (yystate)
			inspect yy_type_id
			when 1 then
				yyvsp1 := yyvsp1 - 1
			when 2 then
				yyvsp2 := yyvsp2 - 1
			when 3 then
				yyvsp3 := yyvsp3 - 1
			when 4 then
				yyvsp4 := yyvsp4 - 1
			when 5 then
				yyvsp5 := yyvsp5 - 1
			when 6 then
				yyvsp6 := yyvsp6 - 1
			when 7 then
				yyvsp7 := yyvsp7 - 1
			when 8 then
				yyvsp8 := yyvsp8 - 1
			when 9 then
				yyvsp9 := yyvsp9 - 1
			when 10 then
				yyvsp10 := yyvsp10 - 1
			when 11 then
				yyvsp11 := yyvsp11 - 1
			when 12 then
				yyvsp12 := yyvsp12 - 1
			when 13 then
				yyvsp13 := yyvsp13 - 1
			when 14 then
				yyvsp14 := yyvsp14 - 1
			when 15 then
				yyvsp15 := yyvsp15 - 1
			when 16 then
				yyvsp16 := yyvsp16 - 1
			when 17 then
				yyvsp17 := yyvsp17 - 1
			when 18 then
				yyvsp18 := yyvsp18 - 1
			when 19 then
				yyvsp19 := yyvsp19 - 1
			when 20 then
				yyvsp20 := yyvsp20 - 1
			when 21 then
				yyvsp21 := yyvsp21 - 1
			when 22 then
				yyvsp22 := yyvsp22 - 1
			when 23 then
				yyvsp23 := yyvsp23 - 1
			when 24 then
				yyvsp24 := yyvsp24 - 1
			when 25 then
				yyvsp25 := yyvsp25 - 1
			when 26 then
				yyvsp26 := yyvsp26 - 1
			when 27 then
				yyvsp27 := yyvsp27 - 1
			when 28 then
				yyvsp28 := yyvsp28 - 1
			when 29 then
				yyvsp29 := yyvsp29 - 1
			when 30 then
				yyvsp30 := yyvsp30 - 1
			when 31 then
				yyvsp31 := yyvsp31 - 1
			when 32 then
				yyvsp32 := yyvsp32 - 1
			when 33 then
				yyvsp33 := yyvsp33 - 1
			when 34 then
				yyvsp34 := yyvsp34 - 1
			when 35 then
				yyvsp35 := yyvsp35 - 1
			when 36 then
				yyvsp36 := yyvsp36 - 1
			when 37 then
				yyvsp37 := yyvsp37 - 1
			when 38 then
				yyvsp38 := yyvsp38 - 1
			when 39 then
				yyvsp39 := yyvsp39 - 1
			when 40 then
				yyvsp40 := yyvsp40 - 1
			when 41 then
				yyvsp41 := yyvsp41 - 1
			when 42 then
				yyvsp42 := yyvsp42 - 1
			when 43 then
				yyvsp43 := yyvsp43 - 1
			when 44 then
				yyvsp44 := yyvsp44 - 1
			when 45 then
				yyvsp45 := yyvsp45 - 1
			when 46 then
				yyvsp46 := yyvsp46 - 1
			when 47 then
				yyvsp47 := yyvsp47 - 1
			when 48 then
				yyvsp48 := yyvsp48 - 1
			when 49 then
				yyvsp49 := yyvsp49 - 1
			when 50 then
				yyvsp50 := yyvsp50 - 1
			when 51 then
				yyvsp51 := yyvsp51 - 1
			when 52 then
				yyvsp52 := yyvsp52 - 1
			when 53 then
				yyvsp53 := yyvsp53 - 1
			when 54 then
				yyvsp54 := yyvsp54 - 1
			when 55 then
				yyvsp55 := yyvsp55 - 1
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown type id: ")
					std.error.put_integer (yy_type_id)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_run_geyacc
			-- You must run geyacc to regenerate this class.
		do
		end

feature {NONE} -- Semantic actions

	yy_do_action (yy_act: INTEGER)
			-- Execute semantic action.
		local
			yyval1: detachable ANY
			yyval11: SIBLING_ORDER
			yyval9: C_ARCHETYPE_ROOT
			yyval10: ARCHETYPE_INTERNAL_REF
			yyval15: ARCHETYPE_SLOT
			yyval13: C_PRIMITIVE_OBJECT
			yyval14: C_PRIMITIVE
			yyval7: ARRAYED_LIST [ASSERTION]
			yyval8: ASSERTION
			yyval16: EXPR_ITEM
			yyval18: EXPR_BINARY_OPERATOR
			yyval17: EXPR_UNARY_OPERATOR
			yyval2: STRING
			yyval19: EXPR_LEAF
			yyval12: MULTIPLICITY_INTERVAL
			yyval43: CARDINALITY
			yyval55: C_INTEGER
			yyval54: C_REAL
			yyval52: C_DATE
			yyval53: C_TIME
			yyval50: C_DATE_TIME
			yyval51: C_DURATION
			yyval49: C_STRING
			yyval48: C_BOOLEAN
			yyval46: C_DV_ORDINAL
			yyval47: ORDINAL
			yyval45: C_CODE_PHRASE
			yyval44: CONSTRAINT_REF
			yyval27: ARRAYED_LIST [STRING]
			yyval3: INTEGER
			yyval28: ARRAYED_LIST [INTEGER]
			yyval37: INTERVAL [INTEGER]
			yyval4: REAL
			yyval29: ARRAYED_LIST [REAL]
			yyval38: INTERVAL [REAL]
			yyval20: BOOLEAN
			yyval21: ISO8601_DATE
			yyval40: INTERVAL [ISO8601_DATE]
			yyval23: ISO8601_TIME
			yyval39: INTERVAL [ISO8601_TIME]
			yyval22: ISO8601_DATE_TIME
			yyval41: INTERVAL [ISO8601_DATE_TIME]
			yyval24: ISO8601_DURATION
			yyval42: INTERVAL [ISO8601_DURATION]
		do
			inspect yy_act
when 1 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 171")
end

			debug("ADL_parse")
				io.put_string("CADL definition parsed%N")
			end
			output := yyvs1.item (yyvsp1)
			accept

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 2 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 179")
end

			debug("ADL_parse")
				io.put_string("assertion definition parsed%N")
			end
			output := yyvs7.item (yyvsp7)
			accept

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 3 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 187")
end

			debug("ADL_parse")
				io.put_string("CADL definition NOT parsed%N")
			end
			abort

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 4 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 196")
end

			debug("ADL_parse")
				io.put_string(indent + "POP OBJECT_NODE " + object_nodes.item.rm_type_name + " [id=" + object_nodes.item.node_id + "]%N")
				indent.remove_tail(1)
			end
			yyval1 := object_nodes.item
			object_nodes.remove

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp1 := yyvsp1 -4
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 5 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 205")
end

			-- ok in case where occurrences or node_id is being redefined in a specialised archetype or template
			if differential_syntax then
				debug("ADL_parse")
					io.put_string(indent + "POP OBJECT_NODE " + object_nodes.item.rm_type_name + " [id=" + object_nodes.item.node_id + "]%N")
					indent.remove_tail(1)
				end
				yyval1 := object_nodes.item
				object_nodes.remove
			else
				abort_with_error (ec_VCOCDocc, <<complex_obj.rm_type_name, complex_obj.path>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 6 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 221")
end

			if yyvs12.item (yyvsp12) /= Void then
				complex_obj.set_occurrences(yyvs12.item (yyvsp12))
			end

			if rm_schema.has_class_definition (complex_obj.rm_type_name) then
				object_nodes.extend(complex_obj)
				debug("ADL_parse")
					io.put_string(indent + "PUSH create OBJECT_NODE " + complex_obj.rm_type_name + " [id=" + complex_obj.node_id + "] ")
					if yyvs12.item (yyvsp12) /= Void then
						io.put_string("; occurrences=(" + yyvs12.item (yyvsp12).as_string + ")")
					end
					io.new_line
					indent.append("%T")
				end

				-- put it under current attribute, unless it is the root object, in which case it will be returned
				-- via the 'output' attribute of this parser
				if not c_attrs.is_empty then
					safe_put_c_attribute_child (c_attrs.item, complex_obj)
				end
			else
				abort_with_error (ec_VCORM, <<complex_obj.rm_type_name, complex_obj.path>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp12 := yyvsp12 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 7 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 249")
end

			create complex_obj.make_anonymous(yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 8 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 253")
end

			create complex_obj.make_identified(yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -2
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 9 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 257")
end

			if differential_syntax then
				create complex_obj.make_identified(yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
				complex_obj.set_sibling_order(yyvs11.item (yyvsp11))
			else
				abort_with_error (ec_SDSF, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 + 1
	yyvsp11 := yyvsp11 -1
	yyvsp2 := yyvsp2 -2
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 10 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 268")
end

			yyval11 := create {SIBLING_ORDER}.make_after(yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp11 := yyvsp11 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp11 >= yyvsc11 or yyvs11 = Void or yyspecial_routines11 = Void then
		if yyvs11 = Void or yyspecial_routines11 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs11")
			end
			create yyspecial_routines11
			yyvsc11 := yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.make (yyvsc11)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs11")
			end
			yyvsc11 := yyvsc11 + yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.resize (yyvs11, yyvsc11)
		end
	end
	yyspecial_routines11.force (yyvs11, yyval11, yyvsp11)
end
when 11 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 272")
end

			yyval11 := create {SIBLING_ORDER}.make_before(yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp11 := yyvsp11 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp11 >= yyvsc11 or yyvs11 = Void or yyspecial_routines11 = Void then
		if yyvs11 = Void or yyspecial_routines11 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs11")
			end
			create yyspecial_routines11
			yyvsc11 := yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.make (yyvsc11)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs11")
			end
			yyvsc11 := yyvsc11 + yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.resize (yyvs11, yyvsc11)
		end
	end
	yyspecial_routines11.force (yyvs11, yyval11, yyvsp11)
end
when 12 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 278")
end

			debug("ADL_parse")
				io.put_string(indent + "OBJECT_NODE " + object_nodes.item.rm_type_name +
					" [id=" + object_nodes.item.node_id + "] - any_allowed%N")
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 13 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 285")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 14 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 288")
end

			abort_with_error (ec_SCOAT, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 15 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 298")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 16 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 301")
end

			safe_put_c_attribute_child (c_attrs.item, yyvs9.item (yyvsp9))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp9 := yyvsp9 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 17 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 305")
end

			safe_put_c_attribute_child (c_attrs.item, yyvs10.item (yyvsp10))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 18 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 309")
end

			safe_put_c_attribute_child (c_attrs.item, yyvs15.item (yyvsp15))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp15 := yyvsp15 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 19 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 313")
end

			safe_put_c_attribute_child (c_attrs.item, yyvs44.item (yyvsp44))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp44 := yyvsp44 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 20 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 317")
end

			safe_put_c_attribute_child (c_attrs.item, yyvs45.item (yyvsp45))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp45 := yyvsp45 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 21 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 321")
end

			safe_put_c_attribute_child (c_attrs.item, yyvs46.item (yyvsp46))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp46 := yyvsp46 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 22 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 325")
end

			safe_put_c_attribute_child (c_attrs.item, yyvs13.item (yyvsp13))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 23 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 329")
end

			safe_put_c_attribute_child(c_attrs.item, c_domain_type)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp6 := yyvsp6 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 24 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 333")
end

			abort_with_error (ec_SDINV, <<odin_parser_error.as_string>>)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 25 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 337")
end

			abort_with_error (ec_SCCOG, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 26 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 348")
end

			if (create {ARCHETYPE_ID}).valid_id(yyvs2.item (yyvsp2)) then
				create yyval9.make_external_ref(yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
				if yyvs12.item (yyvsp12) /= Void then
					yyval9.set_occurrences(yyvs12.item (yyvsp12))
				end
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp9 := yyvsp9 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp2 := yyvsp2 -2
	yyvsp12 := yyvsp12 -1
	if yyvsp9 >= yyvsc9 or yyvs9 = Void or yyspecial_routines9 = Void then
		if yyvs9 = Void or yyspecial_routines9 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs9")
			end
			create yyspecial_routines9
			yyvsc9 := yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.make (yyvsc9)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs9")
			end
			yyvsc9 := yyvsc9 + yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.resize (yyvs9, yyvsc9)
		end
	end
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
when 27 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 357")
end

			if (create {ARCHETYPE_ID}).valid_id(yyvs2.item (yyvsp2)) then
				create yyval9.make_slot_filler(yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2), yyvs2.item (yyvsp2 - 1))
				if yyvs12.item (yyvsp12) /= Void then
					yyval9.set_occurrences(yyvs12.item (yyvsp12))
				end
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp9 := yyvsp9 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp2 := yyvsp2 -3
	yyvsp12 := yyvsp12 -1
	if yyvsp9 >= yyvsc9 or yyvs9 = Void or yyspecial_routines9 = Void then
		if yyvs9 = Void or yyspecial_routines9 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs9")
			end
			create yyspecial_routines9
			yyvsc9 := yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.make (yyvsc9)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs9")
			end
			yyvsc9 := yyvsc9 + yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.resize (yyvs9, yyvsc9)
		end
	end
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
when 28 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 366")
end

			abort_with_error (ec_SUAID, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp9 := yyvsp9 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp9 >= yyvsc9 or yyvs9 = Void or yyspecial_routines9 = Void then
		if yyvs9 = Void or yyspecial_routines9 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs9")
			end
			create yyspecial_routines9
			yyvsc9 := yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.make (yyvsc9)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs9")
			end
			yyvsc9 := yyvsc9 + yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.resize (yyvs9, yyvsc9)
		end
	end
	yyspecial_routines9.force (yyvs9, yyval9, yyvsp9)
end
when 29 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 372")
end

			create og_path.make_from_string (yyvs2.item (yyvsp2))
			if attached arch_internal_ref_node_id then
				create yyval10.make_identified (arch_internal_ref_rm_type_name, arch_internal_ref_node_id, yyvs2.item (yyvsp2))
			else
				create yyval10.make (arch_internal_ref_rm_type_name, yyvs2.item (yyvsp2))

				-- if the C_ATTRIBUTE above this node requires that this node has an identifier, then take it from the target path
				if c_attrs.item.candidate_child_requires_id (yyval10.rm_type_name) then
					-- default to the id from the target path
					if not og_path.last.object_id.is_empty then
						yyval10.set_node_id (og_path.last.object_id)
					else
						-- error will be generated when attempt is made to add this object to C_ATTRIBUTE
					end
				end

			end
			if attached yyvs12.item (yyvsp12) then
				yyval10.set_occurrences (yyvs12.item (yyvsp12))
			end

			debug("ADL_parse")
				io.put_string(indent + "create ARCHETYPE_INTERNAL_REF ")
				io.put_string (yyval10.rm_type_name)
				if yyval10.is_addressable then
					io.put_string("[" + yyval10.node_id + "] ")
				else
					io.put_string(" ")
				end
				if yyval10.use_target_occurrences then
					io.put_string("occurrences=(use target) ")
				elseif yyvs12.item (yyvsp12) /= Void then
					io.put_string("occurrences=" + yyval10.occurrences.as_string + " ")
				end
				io.put_string (" => " + yyval10.target_path + "%N")
				io.put_string (indent + "C_ATTR " + c_attrs.item.rm_attribute_name + " safe_put_c_attribute_child(ARCHETYPE_INTERNAL_REF)%N")
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp10 := yyvsp10 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp12 := yyvsp12 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp10 >= yyvsc10 or yyvs10 = Void or yyspecial_routines10 = Void then
		if yyvs10 = Void or yyspecial_routines10 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs10")
			end
			create yyspecial_routines10
			yyvsc10 := yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.make (yyvsc10)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs10")
			end
			yyvsc10 := yyvsc10 + yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.resize (yyvs10, yyvsc10)
		end
	end
	yyspecial_routines10.force (yyvs10, yyval10, yyvsp10)
end
when 30 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 412")
end

			abort_with_error (ec_SUNPA, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp10 := yyvsp10 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp10 >= yyvsc10 or yyvs10 = Void or yyspecial_routines10 = Void then
		if yyvs10 = Void or yyspecial_routines10 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs10")
			end
			create yyspecial_routines10
			yyvsc10 := yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.make (yyvsc10)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs10")
			end
			yyvsc10 := yyvsc10 + yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.resize (yyvs10, yyvsc10)
		end
	end
	yyspecial_routines10.force (yyvs10, yyval10, yyvsp10)
end
when 31 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 418")
end

			arch_internal_ref_rm_type_name := yyvs2.item (yyvsp2)
			arch_internal_ref_node_id := Void

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 32 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 423")
end

			arch_internal_ref_rm_type_name := yyvs2.item (yyvsp2 - 1)
			arch_internal_ref_node_id := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -2
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 33 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 430")
end

			if attached yyvs7.item (yyvsp7 - 1) then
				yyvs15.item (yyvsp15).set_includes(yyvs7.item (yyvsp7 - 1))
			end
			if attached yyvs7.item (yyvsp7) then
				yyvs15.item (yyvsp15).set_excludes(yyvs7.item (yyvsp7))
			end

			debug("ADL_parse")
				indent.remove_tail(1)
			end
			yyval15 := yyvs15.item (yyvsp15)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp1 := yyvsp1 -3
	yyvsp7 := yyvsp7 -2
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 34 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 444")
end

			if not (yyvs15.item (yyvsp15).is_closed or yyvs15.item (yyvsp15).is_prohibited) then
				abort_with_error (ec_VASMD, <<yyvs15.item (yyvsp15).rm_type_name, c_attrs.item.path>>)
			end
			yyval15 := yyvs15.item (yyvsp15)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 35 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 453")
end

			if attached yyvs12.item (yyvsp12) then
				yyvs15.item (yyvsp15).set_occurrences(yyvs12.item (yyvsp12))
			end

			debug("ADL_parse")
				io.put_string(indent + "create ARCHETYPE_SLOT " + yyvs15.item (yyvsp15).rm_type_name + " [id=" + yyvs15.item (yyvsp15).node_id + "]")
				if attached yyvs12.item (yyvsp12) then
					io.put_string("; occurrences=(" + yyvs12.item (yyvsp12).as_string + ")")
				end
				io.new_line
				indent.append("%T")
			end
			yyval15 := yyvs15.item (yyvsp15)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp12 := yyvsp12 -1
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 36 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 471")
end

			create yyval15.make_anonymous(yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp15 := yyvsp15 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp15 >= yyvsc15 or yyvs15 = Void or yyspecial_routines15 = Void then
		if yyvs15 = Void or yyspecial_routines15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 37 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 475")
end

			if differential_syntax then
				create yyval15.make_anonymous(yyvs2.item (yyvsp2))
				yyval15.set_sibling_order(yyvs11.item (yyvsp11))
			else
				abort_with_error (ec_SDSF, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp15 := yyvsp15 + 1
	yyvsp11 := yyvsp11 -1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp15 >= yyvsc15 or yyvs15 = Void or yyspecial_routines15 = Void then
		if yyvs15 = Void or yyspecial_routines15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 38 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 484")
end

			create yyval15.make_identified(yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp15 := yyvsp15 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -2
	if yyvsp15 >= yyvsc15 or yyvs15 = Void or yyspecial_routines15 = Void then
		if yyvs15 = Void or yyspecial_routines15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 39 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 488")
end

			if differential_syntax then
				create yyval15.make_identified(yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
				yyval15.set_sibling_order(yyvs11.item (yyvsp11))
			else
				abort_with_error (ec_SDSF, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp15 := yyvsp15 + 1
	yyvsp11 := yyvsp11 -1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -2
	if yyvsp15 >= yyvsc15 or yyvs15 = Void or yyspecial_routines15 = Void then
		if yyvs15 = Void or yyspecial_routines15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 40 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 497")
end

			create yyval15.make_anonymous(yyvs2.item (yyvsp2))
			yyval15.set_closed

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp15 := yyvsp15 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp15 >= yyvsc15 or yyvs15 = Void or yyspecial_routines15 = Void then
		if yyvs15 = Void or yyspecial_routines15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 41 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 502")
end

			create yyval15.make_identified(yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2))
			yyval15.set_closed

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp15 := yyvsp15 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp2 := yyvsp2 -2
	if yyvsp15 >= yyvsc15 or yyvs15 = Void or yyspecial_routines15 = Void then
		if yyvs15 = Void or yyspecial_routines15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 42 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 507")
end

			abort_with_error (ec_SUAS, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp15 := yyvsp15 + 1
	yyvsp1 := yyvsp1 -2
	if yyvsp15 >= yyvsc15 or yyvs15 = Void or yyspecial_routines15 = Void then
		if yyvs15 = Void or yyspecial_routines15 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs15")
			end
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs15")
			end
			yyvsc15 := yyvsc15 + yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.resize (yyvs15, yyvsc15)
		end
	end
	yyspecial_routines15.force (yyvs15, yyval15, yyvsp15)
end
when 43 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 513")
end

			create yyval13.make (yyvs14.item (yyvsp14))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp13 := yyvsp13 + 1
	yyvsp14 := yyvsp14 -1
	if yyvsp13 >= yyvsc13 or yyvs13 = Void or yyspecial_routines13 = Void then
		if yyvs13 = Void or yyspecial_routines13 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs13")
			end
			create yyspecial_routines13
			yyvsc13 := yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.make (yyvsc13)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs13")
			end
			yyvsc13 := yyvsc13 + yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.resize (yyvs13, yyvsc13)
		end
	end
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
when 44 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 519")
end

			debug("ADL_parse")
				io.put_string(indent + "C_INTEGER: " +  yyvs55.item (yyvsp55).as_string + "%N")
			end
			yyval14 := yyvs55.item (yyvsp55)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp55 := yyvsp55 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 45 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 526")
end

			debug("ADL_parse")
				io.put_string(indent + "C_REAL: " +  yyvs54.item (yyvsp54).as_string + "%N")
			end
			yyval14 := yyvs54.item (yyvsp54)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp54 := yyvsp54 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 46 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 533")
end

			debug("ADL_parse")
				io.put_string(indent + "C_DATE: " +  yyvs52.item (yyvsp52).as_string + "%N")
			end
			yyval14 := yyvs52.item (yyvsp52)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp52 := yyvsp52 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 47 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 540")
end

			debug("ADL_parse")
				io.put_string(indent + "C_TIME: " +  yyvs53.item (yyvsp53).as_string + "%N")
			end
			yyval14 := yyvs53.item (yyvsp53)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp53 := yyvsp53 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 48 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 547")
end

			debug("ADL_parse")
				io.put_string(indent + "C_DATE_TIME: " +  yyvs50.item (yyvsp50).as_string + "%N")
			end
			yyval14 := yyvs50.item (yyvsp50)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp50 := yyvsp50 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 49 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 554")
end

			debug("ADL_parse")
				io.put_string(indent + "C_DURATION: " +  yyvs51.item (yyvsp51).as_string + "%N")
			end
			yyval14 := yyvs51.item (yyvsp51)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp51 := yyvsp51 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 50 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 561")
end

			debug("ADL_parse")
				io.put_string(indent + "C_STRING: " +  yyvs49.item (yyvsp49).as_string + "%N")
			end
			yyval14 := yyvs49.item (yyvsp49)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp49 := yyvsp49 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 51 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 568")
end

			debug("ADL_parse")
				io.put_string(indent + "C_BOOLEAN: " +  yyvs48.item (yyvsp48).as_string + "%N")
			end
			yyval14 := yyvs48.item (yyvsp48)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp14 := yyvsp14 + 1
	yyvsp48 := yyvsp48 -1
	if yyvsp14 >= yyvsc14 or yyvs14 = Void or yyspecial_routines14 = Void then
		if yyvs14 = Void or yyspecial_routines14 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs14")
			end
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs14")
			end
			yyvsc14 := yyvsc14 + yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.resize (yyvs14, yyvsc14)
		end
	end
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
when 52 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 577")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 53 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 584")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 54 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 587")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 55 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 592")
end

			debug("ADL_parse")
				io.put_string(indent + "POP ATTR_NODE " + c_attrs.item.rm_attribute_name + "%N")
				indent.remove_tail(1)
			end
			c_attrs.remove

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp1 := yyvsp1 -4
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 56 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 600")
end

			if differential_syntax then
				c_attrs.remove
			else
				abort_with_error (ec_SCAS, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 57 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 608")
end

			abort_with_error (ec_SCAS, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp1 := yyvsp1 -4
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 58 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 614")
end

			rm_attribute_name := yyvs2.item (yyvsp2)
			if not object_nodes.item.has_attribute(rm_attribute_name) then
				if rm_schema.has_property (object_nodes.item.rm_type_name, rm_attribute_name) then
					bmm_prop_def := rm_schema.property_definition (object_nodes.item.rm_type_name, rm_attribute_name)
					if bmm_prop_def.is_container then
						create attr_node.make_multiple(rm_attribute_name, yyvs12.item (yyvsp12), yyvs43.item (yyvsp43))
						c_attrs.put(attr_node)
						debug("ADL_parse")
							io.put_string(indent + "PUSH create ATTR_NODE " + rm_attribute_name + "; container = " + attr_node.is_multiple.out)
							if yyvs12.item (yyvsp12) /= Void then io.put_string(" existence={" + yyvs12.item (yyvsp12).as_string + "}") end
							if yyvs43.item (yyvsp43) /= Void then io.put_string("; cardinality=(" + yyvs43.item (yyvsp43).as_string + ")") end
							io.new_line
							io.put_string(indent + "OBJECT_NODE " + object_nodes.item.rm_type_name + " [id=" + object_nodes.item.node_id + "] put_attribute(REL)%N")
							indent.append("%T")
						end
						object_nodes.item.put_attribute(attr_node)
					elseif yyvs43.item (yyvsp43) = Void then
						create attr_node.make_single(rm_attribute_name, yyvs12.item (yyvsp12))
						c_attrs.put(attr_node)
						debug("ADL_parse")
							io.put_string(indent + "PUSH create ATTR_NODE " + rm_attribute_name + "; container = " + attr_node.is_multiple.out)
							if yyvs12.item (yyvsp12) /= Void then io.put_string(" existence={" + yyvs12.item (yyvsp12).as_string + "}") end
							if yyvs43.item (yyvsp43) /= Void then io.put_string("; cardinality=(" + yyvs43.item (yyvsp43).as_string + ")") end
							io.new_line
							io.put_string(indent + "OBJECT_NODE " + object_nodes.item.rm_type_name + " [id=" + object_nodes.item.node_id + "] put_attribute(REL)%N")
							indent.append("%T")
						end
						object_nodes.item.put_attribute(attr_node)
					else -- error - cardinality stated, but on a non-container attribute
						abort_with_error (ec_VSAM2, <<rm_attribute_name>>)
					end
				else
					abort_with_error (ec_VCARM, <<rm_attribute_name, object_nodes.item.path, object_nodes.item.rm_type_name>>)
				end
			else
				abort_with_error (ec_VCATU, <<rm_attribute_name>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp43 := yyvsp43 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 59 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 654")
end

			create og_path.make_from_string (yyvs2.item (yyvsp2))
			rm_attribute_name := og_path.last.attr_name
			parent_path_str := og_path.parent_path.as_string

			if not object_nodes.item.has_attribute(yyvs2.item (yyvsp2)) then
				-- check RM to see if path is valid, and if it is a container
				if rm_schema.has_property_path (object_nodes.item.rm_type_name, yyvs2.item (yyvsp2)) then
					bmm_prop_def := rm_schema.property_definition_at_path (object_nodes.item.rm_type_name, yyvs2.item (yyvsp2))
					if bmm_prop_def.is_container then
						create attr_node.make_multiple(rm_attribute_name, yyvs12.item (yyvsp12), yyvs43.item (yyvsp43))
						attr_node.set_differential_path (parent_path_str)
						c_attrs.put(attr_node)
						debug("ADL_parse")
							io.put_string(indent + "PUSH create ATTR_NODE " + yyvs2.item (yyvsp2) + "; container = " + attr_node.is_multiple.out)
							if yyvs12.item (yyvsp12) /= Void then io.put_string(" existence={" + yyvs12.item (yyvsp12).as_string + "}") end
							io.new_line
							io.put_string(indent + "OBJECT_NODE " + object_nodes.item.rm_type_name + " [id=" + object_nodes.item.node_id + "] put_attribute(REL)%N")
							indent.append("%T")
						end
						object_nodes.item.put_attribute(attr_node)
					elseif yyvs43.item (yyvsp43) = Void then
						create attr_node.make_single(rm_attribute_name, yyvs12.item (yyvsp12))
						attr_node.set_differential_path (parent_path_str)
						c_attrs.put(attr_node)
						debug("ADL_parse")
							io.put_string(indent + "PUSH create ATTR_NODE " + yyvs2.item (yyvsp2) + "; container = " + attr_node.is_multiple.out)
							if yyvs12.item (yyvsp12) /= Void then io.put_string(" existence={" + yyvs12.item (yyvsp12).as_string + "}") end
							io.new_line
							io.put_string(indent + "OBJECT_NODE " + object_nodes.item.rm_type_name + " [id=" + object_nodes.item.node_id + "] put_attribute(REL)%N")
							indent.append("%T")
						end
						object_nodes.item.put_attribute(attr_node)
					else -- error - cardinality stated, but on a non-container attribute
						abort_with_error (ec_VSAM2, <<yyvs2.item (yyvsp2)>>)
					end
				else
					abort_with_error (ec_VDIFP2, <<yyvs2.item (yyvsp2)>>)
				end
			else
				abort_with_error (ec_VCATU, <<yyvs2.item (yyvsp2)>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp12 := yyvsp12 -1
	yyvsp43 := yyvsp43 -1
	if yyvsp1 >= yyvsc1 or yyvs1 = Void or yyspecial_routines1 = Void then
		if yyvs1 = Void or yyspecial_routines1 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs1")
			end
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs1")
			end
			yyvsc1 := yyvsc1 + yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.resize (yyvs1, yyvsc1)
		end
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 60 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 700")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 61 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 703")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 62 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 706")
end

			debug("ADL_parse")
				io.put_string(indent + "ATTR_NODE " + attr_node.rm_attribute_name + "  - any_allowed%N")
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
when 63 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 714")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp7 := yyvsp7 + 1
	if yyvsp7 >= yyvsc7 or yyvs7 = Void or yyspecial_routines7 = Void then
		if yyvs7 = Void or yyspecial_routines7 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs7")
			end
			create yyspecial_routines7
			yyvsc7 := yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.make (yyvsc7)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs7")
			end
			yyvsc7 := yyvsc7 + yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.resize (yyvs7, yyvsc7)
		end
	end
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
when 64 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 715")
end

			debug("include list")
				io.put_string(indent + "[---assertion expression---] %N")
			end
			yyval7 := yyvs7.item (yyvsp7)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
when 65 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 724")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp7 := yyvsp7 + 1
	if yyvsp7 >= yyvsc7 or yyvs7 = Void or yyspecial_routines7 = Void then
		if yyvs7 = Void or yyspecial_routines7 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs7")
			end
			create yyspecial_routines7
			yyvsc7 := yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.make (yyvsc7)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs7")
			end
			yyvsc7 := yyvsc7 + yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.resize (yyvs7, yyvsc7)
		end
	end
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
when 66 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 725")
end

			debug("exclude list")
				io.put_string(indent + "[---assertion expression---] %N")
			end
			yyval7 := yyvs7.item (yyvsp7)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
when 67 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 738")
end

			create yyval7.make(0)
			yyval7.extend (yyvs8.item (yyvsp8))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp7 := yyvsp7 + 1
	yyvsp8 := yyvsp8 -1
	if yyvsp7 >= yyvsc7 or yyvs7 = Void or yyspecial_routines7 = Void then
		if yyvs7 = Void or yyspecial_routines7 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs7")
			end
			create yyspecial_routines7
			yyvsc7 := yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.make (yyvsc7)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs7")
			end
			yyvsc7 := yyvsc7 + yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.resize (yyvs7, yyvsc7)
		end
	end
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
when 68 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 743")
end

			yyvs7.item (yyvsp7).extend (yyvs8.item (yyvsp8))
			yyval7 := yyvs7.item (yyvsp7)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp8 := yyvsp8 -1
	yyspecial_routines7.force (yyvs7, yyval7, yyvsp7)
end
when 69 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 750")
end

			create yyval8.make (yyvs16.item (yyvsp16), yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp8 := yyvsp8 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp8 >= yyvsc8 or yyvs8 = Void or yyspecial_routines8 = Void then
		if yyvs8 = Void or yyspecial_routines8 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs8")
			end
			create yyspecial_routines8
			yyvsc8 := yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.make (yyvsc8)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs8")
			end
			yyvsc8 := yyvsc8 + yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.resize (yyvs8, yyvsc8)
		end
	end
	yyspecial_routines8.force (yyvs8, yyval8, yyvsp8)
end
when 70 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 754")
end

			create yyval8.make (yyvs16.item (yyvsp16), Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp8 := yyvsp8 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp8 >= yyvsc8 or yyvs8 = Void or yyspecial_routines8 = Void then
		if yyvs8 = Void or yyspecial_routines8 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs8")
			end
			create yyspecial_routines8
			yyvsc8 := yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.make (yyvsc8)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs8")
			end
			yyvsc8 := yyvsc8 + yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.resize (yyvs8, yyvsc8)
		end
	end
	yyspecial_routines8.force (yyvs8, yyval8, yyvsp8)
end
when 71 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 762")
end

			create yyval8.make (yyvs18.item (yyvsp18), Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp8 := yyvsp8 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp8 >= yyvsc8 or yyvs8 = Void or yyspecial_routines8 = Void then
		if yyvs8 = Void or yyspecial_routines8 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs8")
			end
			create yyspecial_routines8
			yyvsc8 := yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.make (yyvsc8)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs8")
			end
			yyvsc8 := yyvsc8 + yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.resize (yyvs8, yyvsc8)
		end
	end
	yyspecial_routines8.force (yyvs8, yyval8, yyvsp8)
end
when 72 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 766")
end

			abort_with_error (ec_SINVS, <<yyvs2.item (yyvsp2)>>)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp8 := yyvsp8 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp8 >= yyvsc8 or yyvs8 = Void or yyspecial_routines8 = Void then
		if yyvs8 = Void or yyspecial_routines8 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs8")
			end
			create yyspecial_routines8
			yyvsc8 := yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.make (yyvsc8)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs8")
			end
			yyvsc8 := yyvsc8 + yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.resize (yyvs8, yyvsc8)
		end
	end
	yyspecial_routines8.force (yyvs8, yyval8, yyvsp8)
end
when 73 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 774")
end

			yyval16 := yyvs19.item (yyvsp19)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp19 := yyvsp19 -1
	if yyvsp16 >= yyvsc16 or yyvs16 = Void or yyspecial_routines16 = Void then
		if yyvs16 = Void or yyspecial_routines16 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs16")
			end
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs16")
			end
			yyvsc16 := yyvsc16 + yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.resize (yyvs16, yyvsc16)
		end
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 74 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 778")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_node: REDUCE from boolean_unop_expr: [" + yyvs17.item (yyvsp17).as_string + "]%N")
			end
			yyval16 := yyvs17.item (yyvsp17)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp16 >= yyvsc16 or yyvs16 = Void or yyspecial_routines16 = Void then
		if yyvs16 = Void or yyspecial_routines16 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs16")
			end
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs16")
			end
			yyvsc16 := yyvsc16 + yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.resize (yyvs16, yyvsc16)
		end
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 75 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 785")
end

			yyval16 := yyvs18.item (yyvsp18)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp16 >= yyvsc16 or yyvs16 = Void or yyspecial_routines16 = Void then
		if yyvs16 = Void or yyspecial_routines16 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs16")
			end
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs16")
			end
			yyvsc16 := yyvsc16 + yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.resize (yyvs16, yyvsc16)
		end
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 76 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 789")
end

			yyval16 := yyvs18.item (yyvsp18)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp16 >= yyvsc16 or yyvs16 = Void or yyspecial_routines16 = Void then
		if yyvs16 = Void or yyspecial_routines16 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs16")
			end
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs16")
			end
			yyvsc16 := yyvsc16 + yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.resize (yyvs16, yyvsc16)
		end
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 77 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 793")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_node: REDUCE from boolean_constraint_expr: [" + yyvs18.item (yyvsp18).as_string + "]%N")
			end
			yyval16 := yyvs18.item (yyvsp18)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp16 >= yyvsc16 or yyvs16 = Void or yyspecial_routines16 = Void then
		if yyvs16 = Void or yyspecial_routines16 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs16")
			end
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs16")
			end
			yyvsc16 := yyvsc16 + yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.resize (yyvs16, yyvsc16)
		end
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 78 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 800")
end

			yyval16 := yyvs16.item (yyvsp16)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 79 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 810")
end

			debug("ADL_invariant")
				io.put_string(indent + "arch_outer_constraint_expr: Archetype outer feature " + yyvs2.item (yyvsp2) + " matches {" + yyvs14.item (yyvsp14).as_string + "}%N")
			end
			create yyval18.make(create {OPERATOR_KIND}.make(op_matches),
				create {EXPR_LEAF}.make_archetype_ref (yyvs2.item (yyvsp2)),
				create {EXPR_LEAF}.make_constraint (yyvs14.item (yyvsp14)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp18 := yyvsp18 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -3
	yyvsp14 := yyvsp14 -1
	if yyvsp18 >= yyvsc18 or yyvs18 = Void or yyspecial_routines18 = Void then
		if yyvs18 = Void or yyspecial_routines18 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs18")
			end
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs18")
			end
			yyvsc18 := yyvsc18 + yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.resize (yyvs18, yyvsc18)
		end
	end
	yyspecial_routines18.force (yyvs18, yyval18, yyvsp18)
end
when 80 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 821")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_constraint_expr:" + yyvs2.item (yyvsp2) + " matches {" + yyvs14.item (yyvsp14).as_string + "}%N")
			end
			create yyval18.make(create {OPERATOR_KIND}.make(op_matches),
				create {EXPR_LEAF}.make_archetype_definition_ref (yyvs2.item (yyvsp2)),
				create {EXPR_LEAF}.make_constraint (yyvs14.item (yyvsp14)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp18 := yyvsp18 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -3
	yyvsp14 := yyvsp14 -1
	if yyvsp18 >= yyvsc18 or yyvs18 = Void or yyspecial_routines18 = Void then
		if yyvs18 = Void or yyspecial_routines18 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs18")
			end
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs18")
			end
			yyvsc18 := yyvsc18 + yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.resize (yyvs18, yyvsc18)
		end
	end
	yyspecial_routines18.force (yyvs18, yyval18, yyvsp18)
end
when 81 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 830")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_constraint_expr:" + yyvs2.item (yyvsp2) + " matches {" + yyvs45.item (yyvsp45).as_string + "}%N")
			end
			create yyval18.make (create {OPERATOR_KIND}.make (op_matches),
				create {EXPR_LEAF}.make_archetype_definition_ref (yyvs2.item (yyvsp2)),
				create {EXPR_LEAF}.make_coded_term (yyvs45.item (yyvsp45)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp18 := yyvsp18 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -3
	yyvsp45 := yyvsp45 -1
	if yyvsp18 >= yyvsc18 or yyvs18 = Void or yyspecial_routines18 = Void then
		if yyvs18 = Void or yyspecial_routines18 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs18")
			end
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs18")
			end
			yyvsc18 := yyvsc18 + yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.resize (yyvs18, yyvsc18)
		end
	end
	yyspecial_routines18.force (yyvs18, yyval18, yyvsp18)
end
when 82 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 845")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_unop_expr: exists " + yyvs2.item (yyvsp2) + "%N")
			end
			create yyval17.make (create {OPERATOR_KIND}.make (op_exists), create {EXPR_LEAF}.make_archetype_definition_ref (yyvs2.item (yyvsp2)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp17 := yyvsp17 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp17 >= yyvsc17 or yyvs17 = Void or yyspecial_routines17 = Void then
		if yyvs17 = Void or yyspecial_routines17 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs17")
			end
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs17")
			end
			yyvsc17 := yyvsc17 + yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.resize (yyvs17, yyvsc17)
		end
	end
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
when 83 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 852")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_unop_expr: not " + yyvs2.item (yyvsp2) + "%N")
			end
			create yyval17.make (create {OPERATOR_KIND}.make (op_not), create {EXPR_LEAF}.make_archetype_definition_ref (yyvs2.item (yyvsp2)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp17 := yyvsp17 + 1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp17 >= yyvsc17 or yyvs17 = Void or yyspecial_routines17 = Void then
		if yyvs17 = Void or yyspecial_routines17 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs17")
			end
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs17")
			end
			yyvsc17 := yyvsc17 + yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.resize (yyvs17, yyvsc17)
		end
	end
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
when 84 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 859")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_unop_expr: not [(" + yyvs16.item (yyvsp16).as_string + ")] %N")
			end
			create yyval17.make (create {OPERATOR_KIND}.make (op_not), yyvs16.item (yyvsp16))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp17 := yyvsp17 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp16 := yyvsp16 -1
	if yyvsp17 >= yyvsc17 or yyvs17 = Void or yyspecial_routines17 = Void then
		if yyvs17 = Void or yyspecial_routines17 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs17")
			end
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs17")
			end
			yyvsc17 := yyvsc17 + yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.resize (yyvs17, yyvsc17)
		end
	end
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
when 85 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 866")
end

			abort_with_error (ec_SEXPT, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp17 := yyvsp17 + 1
	yyvsp1 := yyvsp1 -2
	if yyvsp17 >= yyvsc17 or yyvs17 = Void or yyspecial_routines17 = Void then
		if yyvs17 = Void or yyspecial_routines17 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs17")
			end
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs17")
			end
			yyvsc17 := yyvsc17 + yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.resize (yyvs17, yyvsc17)
		end
	end
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
when 86 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 876")
end

			debug("ADL_invariant")
				io.put_string(indent + "boolean_binop_expr: [" + yyvs16.item (yyvsp16 - 1).as_string + "] " + yyvs2.item (yyvsp2) + " [" + yyvs16.item (yyvsp16).as_string + "]%N")
			end
			create yyval18.make (create {OPERATOR_KIND}.make (operator_ids_from_symbols.item (yyvs2.item (yyvsp2))), yyvs16.item (yyvsp16 - 1), yyvs16.item (yyvsp16))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp18 := yyvsp18 + 1
	yyvsp16 := yyvsp16 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp18 >= yyvsc18 or yyvs18 = Void or yyspecial_routines18 = Void then
		if yyvs18 = Void or yyspecial_routines18 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs18")
			end
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs18")
			end
			yyvsc18 := yyvsc18 + yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.resize (yyvs18, yyvsc18)
		end
	end
	yyspecial_routines18.force (yyvs18, yyval18, yyvsp18)
end
when 87 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 885")
end

			yyval2 := operator_symbols.item (op_or)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 88 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 889")
end

			yyval2 := operator_symbols.item (op_and)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 89 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 893")
end

			yyval2 := operator_symbols.item (op_xor)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 90 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 897")
end

			yyval2 := operator_symbols.item (op_implies)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 91 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 907")
end

			create yyval19.make_boolean (True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp19 := yyvsp19 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp19 >= yyvsc19 or yyvs19 = Void or yyspecial_routines19 = Void then
		if yyvs19 = Void or yyspecial_routines19 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs19")
			end
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs19")
			end
			yyvsc19 := yyvsc19 + yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.resize (yyvs19, yyvsc19)
		end
	end
	yyspecial_routines19.force (yyvs19, yyval19, yyvsp19)
end
when 92 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 911")
end

			create yyval19.make_boolean (False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp19 := yyvsp19 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp19 >= yyvsc19 or yyvs19 = Void or yyspecial_routines19 = Void then
		if yyvs19 = Void or yyspecial_routines19 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs19")
			end
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs19")
			end
			yyvsc19 := yyvsc19 + yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.resize (yyvs19, yyvsc19)
		end
	end
	yyspecial_routines19.force (yyvs19, yyval19, yyvsp19)
end
when 93 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 921")
end

			debug("ADL_invariant")
				io.put_string(indent + "arithmetic_relop_expr: [" + yyvs16.item (yyvsp16 - 1).as_string + "] " + yyvs2.item (yyvsp2) + " [" + yyvs16.item (yyvsp16).as_string + "]%N")
			end
			create yyval18.make (create {OPERATOR_KIND}.make (operator_ids_from_symbols.item (yyvs2.item (yyvsp2))), yyvs16.item (yyvsp16 - 1), yyvs16.item (yyvsp16))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp18 := yyvsp18 + 1
	yyvsp16 := yyvsp16 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp18 >= yyvsc18 or yyvs18 = Void or yyspecial_routines18 = Void then
		if yyvs18 = Void or yyspecial_routines18 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs18")
			end
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs18")
			end
			yyvsc18 := yyvsc18 + yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.resize (yyvs18, yyvsc18)
		end
	end
	yyspecial_routines18.force (yyvs18, yyval18, yyvsp18)
end
when 94 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 934")
end

			yyval16 := yyvs19.item (yyvsp19)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp19 := yyvsp19 -1
	if yyvsp16 >= yyvsc16 or yyvs16 = Void or yyspecial_routines16 = Void then
		if yyvs16 = Void or yyspecial_routines16 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs16")
			end
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs16")
			end
			yyvsc16 := yyvsc16 + yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.resize (yyvs16, yyvsc16)
		end
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 95 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 938")
end

			yyval16 := yyvs18.item (yyvsp18)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp16 >= yyvsc16 or yyvs16 = Void or yyspecial_routines16 = Void then
		if yyvs16 = Void or yyspecial_routines16 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs16")
			end
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs16")
			end
			yyvsc16 := yyvsc16 + yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.resize (yyvs16, yyvsc16)
		end
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 96 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 942")
end

			debug("ADL_invariant")
				io.put_string (indent + "(expr) %N")
			end
			yyval16 := yyvs16.item (yyvsp16)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
when 97 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 955")
end

			debug("ADL_invariant")
				io.put_string(indent + "arithmetic_arith_binop_expr: [" + yyvs16.item (yyvsp16 - 1).as_string + "] " + yyvs2.item (yyvsp2) + " [" + yyvs16.item (yyvsp16).as_string + "]%N")
			end
			create yyval18.make (create {OPERATOR_KIND}.make (operator_ids_from_symbols.item (yyvs2.item (yyvsp2))), yyvs16.item (yyvsp16 - 1), yyvs16.item (yyvsp16))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp18 := yyvsp18 + 1
	yyvsp16 := yyvsp16 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp18 >= yyvsc18 or yyvs18 = Void or yyspecial_routines18 = Void then
		if yyvs18 = Void or yyspecial_routines18 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs18")
			end
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs18")
			end
			yyvsc18 := yyvsc18 + yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.resize (yyvs18, yyvsc18)
		end
	end
	yyspecial_routines18.force (yyvs18, yyval18, yyvsp18)
end
when 98 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 968")
end

			debug("ADL_invariant")
				io.put_string(indent + "arith_leaf - integer: " + yyvs3.item (yyvsp3).out + "%N")
			end
			create yyval19.make_integer (yyvs3.item (yyvsp3))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp19 := yyvsp19 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp19 >= yyvsc19 or yyvs19 = Void or yyspecial_routines19 = Void then
		if yyvs19 = Void or yyspecial_routines19 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs19")
			end
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs19")
			end
			yyvsc19 := yyvsc19 + yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.resize (yyvs19, yyvsc19)
		end
	end
	yyspecial_routines19.force (yyvs19, yyval19, yyvsp19)
end
when 99 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 975")
end

			debug("ADL_invariant")
				io.put_string(indent + "arith_leaf - real: " + yyvs4.item (yyvsp4).out + "%N")
			end
			create yyval19.make_real (yyvs4.item (yyvsp4))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp19 := yyvsp19 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp19 >= yyvsc19 or yyvs19 = Void or yyspecial_routines19 = Void then
		if yyvs19 = Void or yyspecial_routines19 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs19")
			end
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs19")
			end
			yyvsc19 := yyvsc19 + yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.resize (yyvs19, yyvsc19)
		end
	end
	yyspecial_routines19.force (yyvs19, yyval19, yyvsp19)
end
when 100 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 982")
end

			debug("ADL_invariant")
				io.put_string(indent + "arith_leaf - path: " + yyvs2.item (yyvsp2) + "%N")
			end
			create yyval19.make_archetype_definition_ref (yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp19 := yyvsp19 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp19 >= yyvsc19 or yyvs19 = Void or yyspecial_routines19 = Void then
		if yyvs19 = Void or yyspecial_routines19 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs19")
			end
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs19")
			end
			yyvsc19 := yyvsc19 + yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.resize (yyvs19, yyvsc19)
		end
	end
	yyspecial_routines19.force (yyvs19, yyval19, yyvsp19)
end
when 101 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 991")
end

			yyval2 := operator_symbols.item (op_eq)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 102 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 995")
end

			yyval2 := operator_symbols.item (op_ne)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 103 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 999")
end

			yyval2 := operator_symbols.item (op_le)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 104 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1003")
end

			yyval2 := operator_symbols.item (op_lt)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 105 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1007")
end

			yyval2 := operator_symbols.item (op_ge)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 106 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1011")
end

			yyval2 := operator_symbols.item (op_gt)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 107 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1017")
end

			yyval2 := operator_symbols.item (op_divide)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 108 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1021")
end

			yyval2 := operator_symbols.item (op_multiply)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 109 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1025")
end

			yyval2 := operator_symbols.item (op_plus)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 110 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1029")
end

			yyval2 := operator_symbols.item (op_minus)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 111 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1033")
end

			yyval2 := operator_symbols.item (op_exp)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp2 := yyvsp2 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp2 >= yyvsc2 or yyvs2 = Void or yyspecial_routines2 = Void then
		if yyvs2 = Void or yyspecial_routines2 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs2")
			end
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs2")
			end
			yyvsc2 := yyvsc2 + yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.resize (yyvs2, yyvsc2)
		end
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 112 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1042")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp12 := yyvsp12 + 1
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 113 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1043")
end

			yyval12 := yyvs12.item (yyvsp12)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp1 := yyvsp1 -4
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 114 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1049")
end

			if yyvs3.item (yyvsp3) = 0 then
				create yyval12.make_prohibited
			elseif yyvs3.item (yyvsp3) = 1 then
				create yyval12.make_mandatory
			else
				abort_with_error (ec_SEXLSG, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp12 := yyvsp12 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 115 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1059")
end

			if yyvs3.item (yyvsp3 - 1) = 0 then
				if yyvs3.item (yyvsp3) = 0 then
					create yyval12.make_point(0)
				elseif yyvs3.item (yyvsp3) = 1 then
					create yyval12.make_bounded (0, 1)
				else
					abort_with_error (ec_SEXLU1, Void)
				end
			elseif yyvs3.item (yyvsp3 - 1) = 1 then
				if yyvs3.item (yyvsp3) = 1 then
					create yyval12.make_point(1)
				else
					abort_with_error (ec_SEXLU2, Void)
				end
			else
				abort_with_error (ec_SEXLMG, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp12 := yyvsp12 + 1
	yyvsp3 := yyvsp3 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 116 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1081")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp43 := yyvsp43 + 1
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 117 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1082")
end

			yyval43 := yyvs43.item (yyvsp43)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp1 := yyvsp1 -4
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 118 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1088")
end

			create yyval43.make (yyvs12.item (yyvsp12))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 119 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1092")
end

			create yyval43.make (yyvs12.item (yyvsp12))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 120 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1096")
end

			create yyval43.make (yyvs12.item (yyvsp12))
			yyval43.set_unordered

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 121 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1101")
end

			create yyval43.make (yyvs12.item (yyvsp12))
			yyval43.set_unique

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 122 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1106")
end

			create yyval43.make (yyvs12.item (yyvsp12))
			yyval43.set_unique

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp1 := yyvsp1 -4
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 123 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1111")
end

			create yyval43.make (yyvs12.item (yyvsp12))
			yyval43.set_unique
			yyval43.set_unordered

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp1 := yyvsp1 -4
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 124 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1117")
end

			create yyval43.make (yyvs12.item (yyvsp12))
			yyval43.set_unique

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp1 := yyvsp1 -4
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 125 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1122")
end

			create yyval43.make (yyvs12.item (yyvsp12))
			yyval43.set_unique
			yyval43.set_unordered

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp43 := yyvsp43 + 1
	yyvsp12 := yyvsp12 -1
	yyvsp1 := yyvsp1 -4
	if yyvsp43 >= yyvsc43 or yyvs43 = Void or yyspecial_routines43 = Void then
		if yyvs43 = Void or yyspecial_routines43 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs43")
			end
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs43")
			end
			yyvsc43 := yyvsc43 + yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.resize (yyvs43, yyvsc43)
		end
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
when 126 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1130")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp12 := yyvsp12 + 1
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 127 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1131")
end

			yyval12 := yyvs12.item (yyvsp12)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp1 := yyvsp1 -4
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 128 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1135")
end

			abort_with_error (ec_SOCCF, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp12 := yyvsp12 + 1
	yyvsp1 := yyvsp1 -2
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 129 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1141")
end

			create yyval12.make_point (yyvs3.item (yyvsp3))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp12 := yyvsp12 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 130 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1145")
end

			create yyval12.make_upper_unbounded (0)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp12 := yyvsp12 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 131 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1149")
end

			create yyval12.make_bounded (yyvs3.item (yyvsp3 - 1), yyvs3.item (yyvsp3))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp12 := yyvsp12 + 1
	yyvsp3 := yyvsp3 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 132 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1153")
end

			create yyval12.make_upper_unbounded (yyvs3.item (yyvsp3))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp12 := yyvsp12 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp12 >= yyvsc12 or yyvs12 = Void or yyspecial_routines12 = Void then
		if yyvs12 = Void or yyspecial_routines12 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs12")
			end
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs12")
			end
			yyvsc12 := yyvsc12 + yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.resize (yyvs12, yyvsc12)
		end
	end
	yyspecial_routines12.force (yyvs12, yyval12, yyvsp12)
end
when 133 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1161")
end

			create yyval55.make_list (create {ARRAYED_LIST [INTEGER]}.make_from_array (<<yyvs3.item (yyvsp3)>>))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp55 := yyvsp55 + 1
	yyvsp3 := yyvsp3 -1
	if yyvsp55 >= yyvsc55 or yyvs55 = Void or yyspecial_routines55 = Void then
		if yyvs55 = Void or yyspecial_routines55 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs55")
			end
			create yyspecial_routines55
			yyvsc55 := yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.make (yyvsc55)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs55")
			end
			yyvsc55 := yyvsc55 + yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.resize (yyvs55, yyvsc55)
		end
	end
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
when 134 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1165")
end

			create yyval55.make_list (yyvs28.item (yyvsp28))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp55 := yyvsp55 + 1
	yyvsp28 := yyvsp28 -1
	if yyvsp55 >= yyvsc55 or yyvs55 = Void or yyspecial_routines55 = Void then
		if yyvs55 = Void or yyspecial_routines55 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs55")
			end
			create yyspecial_routines55
			yyvsc55 := yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.make (yyvsc55)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs55")
			end
			yyvsc55 := yyvsc55 + yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.resize (yyvs55, yyvsc55)
		end
	end
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
when 135 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1169")
end

			create yyval55.make_range (yyvs37.item (yyvsp37))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp55 := yyvsp55 + 1
	yyvsp37 := yyvsp37 -1
	if yyvsp55 >= yyvsc55 or yyvs55 = Void or yyspecial_routines55 = Void then
		if yyvs55 = Void or yyspecial_routines55 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs55")
			end
			create yyspecial_routines55
			yyvsc55 := yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.make (yyvsc55)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs55")
			end
			yyvsc55 := yyvsc55 + yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.resize (yyvs55, yyvsc55)
		end
	end
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
when 136 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1173")
end

			if yyvs55.item (yyvsp55).valid_value (yyvs3.item (yyvsp3)) then
				yyvs55.item (yyvsp55).set_assumed_value (yyvs3.item (yyvsp3))
				yyval55 := yyvs55.item (yyvsp55)
			else
				abort_with_error (ec_VOBAV, <<yyvs3.item (yyvsp3).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp3 := yyvsp3 -1
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
when 137 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1182")
end

			abort_with_error (ec_SCIAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
when 138 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1188")
end

			create yyval54.make_list (create {ARRAYED_LIST [REAL]}.make_from_array (<<yyvs4.item (yyvsp4)>>))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp54 := yyvsp54 + 1
	yyvsp4 := yyvsp4 -1
	if yyvsp54 >= yyvsc54 or yyvs54 = Void or yyspecial_routines54 = Void then
		if yyvs54 = Void or yyspecial_routines54 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs54")
			end
			create yyspecial_routines54
			yyvsc54 := yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.make (yyvsc54)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs54")
			end
			yyvsc54 := yyvsc54 + yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.resize (yyvs54, yyvsc54)
		end
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
when 139 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1192")
end

			create yyval54.make_list (yyvs29.item (yyvsp29))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp54 := yyvsp54 + 1
	yyvsp29 := yyvsp29 -1
	if yyvsp54 >= yyvsc54 or yyvs54 = Void or yyspecial_routines54 = Void then
		if yyvs54 = Void or yyspecial_routines54 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs54")
			end
			create yyspecial_routines54
			yyvsc54 := yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.make (yyvsc54)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs54")
			end
			yyvsc54 := yyvsc54 + yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.resize (yyvs54, yyvsc54)
		end
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
when 140 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1196")
end

			create yyval54.make_range (yyvs38.item (yyvsp38))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp54 := yyvsp54 + 1
	yyvsp38 := yyvsp38 -1
	if yyvsp54 >= yyvsc54 or yyvs54 = Void or yyspecial_routines54 = Void then
		if yyvs54 = Void or yyspecial_routines54 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs54")
			end
			create yyspecial_routines54
			yyvsc54 := yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.make (yyvsc54)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs54")
			end
			yyvsc54 := yyvsc54 + yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.resize (yyvs54, yyvsc54)
		end
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
when 141 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1200")
end

			if yyvs54.item (yyvsp54).valid_value (yyvs4.item (yyvsp4)) then
				yyvs54.item (yyvsp54).set_assumed_value (yyvs4.item (yyvsp4))
				yyval54 := yyvs54.item (yyvsp54)
			else
				abort_with_error (ec_VOBAV, <<yyvs4.item (yyvsp4).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp4 := yyvsp4 -1
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
when 142 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1209")
end

			abort_with_error (ec_SCRAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
when 143 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1215")
end

			if valid_iso8601_date_constraint_pattern(yyvs2.item (yyvsp2)) then
				create yyval52.make_from_pattern(yyvs2.item (yyvsp2))
			else
				create str.make(0)
				from valid_date_constraint_patterns.start until valid_date_constraint_patterns.off loop
					if not valid_date_constraint_patterns.isfirst then
						str.append(", ")
					end
					str.append(valid_date_constraint_patterns.item)
					valid_date_constraint_patterns.forth
				end
				abort_with_error (ec_SCDPT, <<str>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp52 := yyvsp52 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp52 >= yyvsc52 or yyvs52 = Void or yyspecial_routines52 = Void then
		if yyvs52 = Void or yyspecial_routines52 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs52")
			end
			create yyspecial_routines52
			yyvsc52 := yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.make (yyvsc52)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs52")
			end
			yyvsc52 := yyvsc52 + yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.resize (yyvs52, yyvsc52)
		end
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
when 144 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1231")
end

			create yyval52.make_range (create {INTERVAL [ISO8601_DATE]}.make_point(yyvs21.item (yyvsp21)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp52 := yyvsp52 + 1
	yyvsp21 := yyvsp21 -1
	if yyvsp52 >= yyvsc52 or yyvs52 = Void or yyspecial_routines52 = Void then
		if yyvs52 = Void or yyspecial_routines52 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs52")
			end
			create yyspecial_routines52
			yyvsc52 := yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.make (yyvsc52)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs52")
			end
			yyvsc52 := yyvsc52 + yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.resize (yyvs52, yyvsc52)
		end
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
when 145 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1235")
end

			create yyval52.make_range (yyvs40.item (yyvsp40))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp52 := yyvsp52 + 1
	yyvsp40 := yyvsp40 -1
	if yyvsp52 >= yyvsc52 or yyvs52 = Void or yyspecial_routines52 = Void then
		if yyvs52 = Void or yyspecial_routines52 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs52")
			end
			create yyspecial_routines52
			yyvsc52 := yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.make (yyvsc52)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs52")
			end
			yyvsc52 := yyvsc52 + yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.resize (yyvs52, yyvsc52)
		end
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
when 146 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1239")
end

			if yyvs52.item (yyvsp52).valid_value (yyvs21.item (yyvsp21)) then
				yyvs52.item (yyvsp52).set_assumed_value (yyvs21.item (yyvsp21))
				yyval52 := yyvs52.item (yyvsp52)
			else
				abort_with_error (ec_VOBAV, <<yyvs21.item (yyvsp21).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp21 := yyvsp21 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
when 147 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1248")
end

			abort_with_error (ec_SCDAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
when 148 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1254")
end

			if valid_iso8601_time_constraint_pattern(yyvs2.item (yyvsp2)) then
				create yyval53.make_from_pattern(yyvs2.item (yyvsp2))
			else
				create str.make(0)
				across valid_time_constraint_patterns as patterns_csr loop
					if patterns_csr.cursor_index > 1 then
						str.append(", ")
					end
					str.append (patterns_csr.item)
				end
				abort_with_error (ec_SCTPT, <<str>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp53 >= yyvsc53 or yyvs53 = Void or yyspecial_routines53 = Void then
		if yyvs53 = Void or yyspecial_routines53 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs53")
			end
			create yyspecial_routines53
			yyvsc53 := yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.make (yyvsc53)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs53")
			end
			yyvsc53 := yyvsc53 + yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.resize (yyvs53, yyvsc53)
		end
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
when 149 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1269")
end

			create yyval53.make_range (create {INTERVAL [ISO8601_TIME]}.make_point(yyvs23.item (yyvsp23)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp53 := yyvsp53 + 1
	yyvsp23 := yyvsp23 -1
	if yyvsp53 >= yyvsc53 or yyvs53 = Void or yyspecial_routines53 = Void then
		if yyvs53 = Void or yyspecial_routines53 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs53")
			end
			create yyspecial_routines53
			yyvsc53 := yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.make (yyvsc53)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs53")
			end
			yyvsc53 := yyvsc53 + yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.resize (yyvs53, yyvsc53)
		end
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
when 150 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1273")
end

			create yyval53.make_range (yyvs39.item (yyvsp39))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp53 := yyvsp53 + 1
	yyvsp39 := yyvsp39 -1
	if yyvsp53 >= yyvsc53 or yyvs53 = Void or yyspecial_routines53 = Void then
		if yyvs53 = Void or yyspecial_routines53 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs53")
			end
			create yyspecial_routines53
			yyvsc53 := yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.make (yyvsc53)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs53")
			end
			yyvsc53 := yyvsc53 + yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.resize (yyvs53, yyvsc53)
		end
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
when 151 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1277")
end

			if yyvs53.item (yyvsp53).valid_value (yyvs23.item (yyvsp23)) then
				yyvs53.item (yyvsp53).set_assumed_value (yyvs23.item (yyvsp23))
				yyval53 := yyvs53.item (yyvsp53)
			else
				abort_with_error (ec_VOBAV, <<yyvs23.item (yyvsp23).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp23 := yyvsp23 -1
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
when 152 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1286")
end

			abort_with_error (ec_SCTAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
when 153 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1292")
end

			if valid_iso8601_date_time_constraint_pattern (yyvs2.item (yyvsp2)) then
				create yyval50.make_from_pattern(yyvs2.item (yyvsp2))
			else
				create str.make (0)
				across valid_date_time_constraint_patterns as patterns_csr loop
					if patterns_csr.cursor_index > 1 then
						str.append(", ")
					end
					str.append (patterns_csr.item)
				end
				abort_with_error (ec_SCDTPT, <<str>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp50 >= yyvsc50 or yyvs50 = Void or yyspecial_routines50 = Void then
		if yyvs50 = Void or yyspecial_routines50 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs50")
			end
			create yyspecial_routines50
			yyvsc50 := yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.make (yyvsc50)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs50")
			end
			yyvsc50 := yyvsc50 + yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.resize (yyvs50, yyvsc50)
		end
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
when 154 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1307")
end

			create yyval50.make_range (create {INTERVAL [ISO8601_DATE_TIME]}.make_point(yyvs22.item (yyvsp22)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp22 := yyvsp22 -1
	if yyvsp50 >= yyvsc50 or yyvs50 = Void or yyspecial_routines50 = Void then
		if yyvs50 = Void or yyspecial_routines50 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs50")
			end
			create yyspecial_routines50
			yyvsc50 := yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.make (yyvsc50)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs50")
			end
			yyvsc50 := yyvsc50 + yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.resize (yyvs50, yyvsc50)
		end
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
when 155 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1311")
end

			create yyval50.make_range (yyvs41.item (yyvsp41))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp41 := yyvsp41 -1
	if yyvsp50 >= yyvsc50 or yyvs50 = Void or yyspecial_routines50 = Void then
		if yyvs50 = Void or yyspecial_routines50 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs50")
			end
			create yyspecial_routines50
			yyvsc50 := yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.make (yyvsc50)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs50")
			end
			yyvsc50 := yyvsc50 + yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.resize (yyvs50, yyvsc50)
		end
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
when 156 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1315")
end

			if yyvs50.item (yyvsp50).valid_value(yyvs22.item (yyvsp22)) then
				yyvs50.item (yyvsp50).set_assumed_value(yyvs22.item (yyvsp22))
				yyval50 := yyvs50.item (yyvsp50)
			else
				abort_with_error (ec_VOBAV, <<yyvs22.item (yyvsp22).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp22 := yyvsp22 -1
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
when 157 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1324")
end

			abort_with_error (ec_SCDTAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
when 158 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1330")
end

			if valid_iso8601_duration_constraint_pattern (yyvs2.item (yyvsp2)) then
				create yyval51.make_from_pattern (yyvs2.item (yyvsp2))
			else
				abort_with_error (ec_SCDUPT, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp51 := yyvsp51 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp51 >= yyvsc51 or yyvs51 = Void or yyspecial_routines51 = Void then
		if yyvs51 = Void or yyspecial_routines51 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs51")
			end
			create yyspecial_routines51
			yyvsc51 := yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.make (yyvsc51)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs51")
			end
			yyvsc51 := yyvsc51 + yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.resize (yyvs51, yyvsc51)
		end
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
when 159 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1338")
end

			if valid_iso8601_duration_constraint_pattern (yyvs2.item (yyvsp2)) then
				create yyval51.make_pattern_with_range (yyvs2.item (yyvsp2), yyvs42.item (yyvsp42))
			else
				abort_with_error (ec_SCDUPT, Void)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp51 := yyvsp51 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	yyvsp42 := yyvsp42 -1
	if yyvsp51 >= yyvsc51 or yyvs51 = Void or yyspecial_routines51 = Void then
		if yyvs51 = Void or yyspecial_routines51 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs51")
			end
			create yyspecial_routines51
			yyvsc51 := yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.make (yyvsc51)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs51")
			end
			yyvsc51 := yyvsc51 + yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.resize (yyvs51, yyvsc51)
		end
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
when 160 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1346")
end

			create yyval51.make_range (create {INTERVAL [ISO8601_DURATION]}.make_point(yyvs24.item (yyvsp24)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp51 := yyvsp51 + 1
	yyvsp24 := yyvsp24 -1
	if yyvsp51 >= yyvsc51 or yyvs51 = Void or yyspecial_routines51 = Void then
		if yyvs51 = Void or yyspecial_routines51 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs51")
			end
			create yyspecial_routines51
			yyvsc51 := yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.make (yyvsc51)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs51")
			end
			yyvsc51 := yyvsc51 + yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.resize (yyvs51, yyvsc51)
		end
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
when 161 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1350")
end

			create yyval51.make_range (yyvs42.item (yyvsp42))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp51 := yyvsp51 + 1
	yyvsp42 := yyvsp42 -1
	if yyvsp51 >= yyvsc51 or yyvs51 = Void or yyspecial_routines51 = Void then
		if yyvs51 = Void or yyspecial_routines51 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs51")
			end
			create yyspecial_routines51
			yyvsc51 := yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.make (yyvsc51)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs51")
			end
			yyvsc51 := yyvsc51 + yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.resize (yyvs51, yyvsc51)
		end
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
when 162 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1354")
end

			if yyvs51.item (yyvsp51).valid_value (yyvs24.item (yyvsp24)) then
				yyvs51.item (yyvsp51).set_assumed_value (yyvs24.item (yyvsp24))
				yyval51 := yyvs51.item (yyvsp51)
			else
				abort_with_error (ec_VOBAV, <<yyvs24.item (yyvsp24).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp24 := yyvsp24 -1
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
when 163 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1363")
end

			abort_with_error (ec_SCDUAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
when 164 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1369")
end

			create yyval49.make_from_string_list (create {ARRAYED_LIST [STRING]}.make_from_array (<<yyvs2.item (yyvsp2)>>))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp49 := yyvsp49 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp49 >= yyvsc49 or yyvs49 = Void or yyspecial_routines49 = Void then
		if yyvs49 = Void or yyspecial_routines49 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs49")
			end
			create yyspecial_routines49
			yyvsc49 := yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.make (yyvsc49)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs49")
			end
			yyvsc49 := yyvsc49 + yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.resize (yyvs49, yyvsc49)
		end
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
when 165 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1373")
end

			create yyval49.make_from_string_list (yyvs27.item (yyvsp27))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp49 := yyvsp49 + 1
	yyvsp27 := yyvsp27 -1
	if yyvsp49 >= yyvsc49 or yyvs49 = Void or yyspecial_routines49 = Void then
		if yyvs49 = Void or yyspecial_routines49 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs49")
			end
			create yyspecial_routines49
			yyvsc49 := yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.make (yyvsc49)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs49")
			end
			yyvsc49 := yyvsc49 + yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.resize (yyvs49, yyvsc49)
		end
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
when 166 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1377")
end

			create yyval49.make_from_string_list (yyvs27.item (yyvsp27))
			yyval49.set_open

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp49 := yyvsp49 + 1
	yyvsp27 := yyvsp27 -1
	if yyvsp49 >= yyvsc49 or yyvs49 = Void or yyspecial_routines49 = Void then
		if yyvs49 = Void or yyspecial_routines49 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs49")
			end
			create yyspecial_routines49
			yyvsc49 := yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.make (yyvsc49)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs49")
			end
			yyvsc49 := yyvsc49 + yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.resize (yyvs49, yyvsc49)
		end
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
when 167 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1382")
end

			create yyval49.make_from_regexp (yyvs2.item (yyvsp2).substring (2, yyvs2.item (yyvsp2).count - 1), yyvs2.item (yyvsp2).item(1) = '/')
			if yyval49.regexp.is_equal ({C_STRING}.regexp_compile_error) then
				abort_with_error (ec_SCSRE, <<yyvs2.item (yyvsp2)>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp49 := yyvsp49 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp49 >= yyvsc49 or yyvs49 = Void or yyspecial_routines49 = Void then
		if yyvs49 = Void or yyspecial_routines49 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs49")
			end
			create yyspecial_routines49
			yyvsc49 := yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.make (yyvsc49)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs49")
			end
			yyvsc49 := yyvsc49 + yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.resize (yyvs49, yyvsc49)
		end
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
when 168 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1389")
end

			if yyvs49.item (yyvsp49).valid_value (yyvs2.item (yyvsp2)) then
				yyvs49.item (yyvsp49).set_assumed_value (yyvs2.item (yyvsp2))
				yyval49 := yyvs49.item (yyvsp49)
			else
				abort_with_error (ec_VOBAV, <<yyvs2.item (yyvsp2).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
when 169 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1398")
end

			abort_with_error (ec_SCSAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
when 170 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1404")
end

			create yyval48.make_true

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp48 >= yyvsc48 or yyvs48 = Void or yyspecial_routines48 = Void then
		if yyvs48 = Void or yyspecial_routines48 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs48")
			end
			create yyspecial_routines48
			yyvsc48 := yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.make (yyvsc48)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs48")
			end
			yyvsc48 := yyvsc48 + yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.resize (yyvs48, yyvsc48)
		end
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
when 171 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1408")
end

			create yyval48.make_false

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp48 >= yyvsc48 or yyvs48 = Void or yyspecial_routines48 = Void then
		if yyvs48 = Void or yyspecial_routines48 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs48")
			end
			create yyspecial_routines48
			yyvsc48 := yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.make (yyvsc48)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs48")
			end
			yyvsc48 := yyvsc48 + yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.resize (yyvs48, yyvsc48)
		end
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
when 172 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1412")
end

			create yyval48.make_true_false

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp48 := yyvsp48 + 1
	yyvsp1 := yyvsp1 -3
	if yyvsp48 >= yyvsc48 or yyvs48 = Void or yyspecial_routines48 = Void then
		if yyvs48 = Void or yyspecial_routines48 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs48")
			end
			create yyspecial_routines48
			yyvsc48 := yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.make (yyvsc48)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs48")
			end
			yyvsc48 := yyvsc48 + yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.resize (yyvs48, yyvsc48)
		end
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
when 173 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1416")
end

			create yyval48.make_true_false

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp48 := yyvsp48 + 1
	yyvsp1 := yyvsp1 -3
	if yyvsp48 >= yyvsc48 or yyvs48 = Void or yyspecial_routines48 = Void then
		if yyvs48 = Void or yyspecial_routines48 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs48")
			end
			create yyspecial_routines48
			yyvsc48 := yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.make (yyvsc48)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs48")
			end
			yyvsc48 := yyvsc48 + yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.resize (yyvs48, yyvsc48)
		end
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
when 174 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1420")
end

			if yyvs48.item (yyvsp48).valid_value (yyvs20.item (yyvsp20)) then
				yyvs48.item (yyvsp48).set_assumed_value (yyvs20.item (yyvsp20))
			else
				abort_with_error (ec_VOBAV, <<yyvs20.item (yyvsp20).out>>)
			end
			yyval48 := yyvs48.item (yyvsp48)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
when 175 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1429")
end

			abort_with_error (ec_SCBAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
when 176 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1435")
end

			create yyval46.default_create
			yyval46.add_item (yyvs47.item (yyvsp47))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp46 := yyvsp46 + 1
	yyvsp47 := yyvsp47 -1
	if yyvsp46 >= yyvsc46 or yyvs46 = Void or yyspecial_routines46 = Void then
		if yyvs46 = Void or yyspecial_routines46 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs46")
			end
			create yyspecial_routines46
			yyvsc46 := yyInitial_yyvs_size
			yyvs46 := yyspecial_routines46.make (yyvsc46)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs46")
			end
			yyvsc46 := yyvsc46 + yyInitial_yyvs_size
			yyvs46 := yyspecial_routines46.resize (yyvs46, yyvsc46)
		end
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
when 177 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1440")
end

			if yyvs46.item (yyvsp46).has_item (yyvs47.item (yyvsp47).value) then
				abort_with_error (ec_VCOV, <<yyvs47.item (yyvsp47).value.out>>)
			elseif yyvs46.item (yyvsp46).has_code_phrase (yyvs47.item (yyvsp47).symbol) then
				abort_with_error (ec_VCOC, <<yyvs47.item (yyvsp47).symbol.code_string>>)
			else
				yyvs46.item (yyvsp46).add_item (yyvs47.item (yyvsp47))
			end
			yyval46 := yyvs46.item (yyvsp46)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp47 := yyvsp47 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
when 178 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1451")
end

			if yyvs46.item (yyvsp46).has_item (yyvs3.item (yyvsp3)) then
				yyvs46.item (yyvsp46).set_assumed_value_from_integer (yyvs3.item (yyvsp3))
			else
				abort_with_error (ec_VOBAV, <<yyvs3.item (yyvsp3).out>>)
			end
			yyval46 := yyvs46.item (yyvsp46)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp3 := yyvsp3 -1
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
when 179 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1460")
end

			abort_with_error (ec_SCOAV, Void)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
when 180 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1466")
end

			create yyval47.make (yyvs3.item (yyvsp3), create {CODE_PHRASE}.make_from_string (yyvs2.item (yyvsp2)))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp47 := yyvsp47 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp47 >= yyvsc47 or yyvs47 = Void or yyspecial_routines47 = Void then
		if yyvs47 = Void or yyspecial_routines47 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs47")
			end
			create yyspecial_routines47
			yyvsc47 := yyInitial_yyvs_size
			yyvs47 := yyspecial_routines47.make (yyvsc47)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs47")
			end
			yyvsc47 := yyvsc47 + yyInitial_yyvs_size
			yyvs47 := yyspecial_routines47.resize (yyvs47, yyvsc47)
		end
	end
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
when 181 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1472")
end

			create yyval45.default_create

			if yyval45.valid_pattern (yyvs2.item (yyvsp2)) then
				yyval45.make_from_pattern (yyvs2.item (yyvsp2))
			else
				abort_with_error (ec_VOBAV, <<yyval45.fail_reason>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp45 := yyvsp45 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp45 >= yyvsc45 or yyvs45 = Void or yyspecial_routines45 = Void then
		if yyvs45 = Void or yyspecial_routines45 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs45")
			end
			create yyspecial_routines45
			yyvsc45 := yyInitial_yyvs_size
			yyvs45 := yyspecial_routines45.make (yyvsc45)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs45")
			end
			yyvsc45 := yyvsc45 + yyInitial_yyvs_size
			yyvs45 := yyspecial_routines45.resize (yyvs45, yyvsc45)
		end
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
when 182 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1482")
end

			create yyval45.make_from_pattern(yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp45 := yyvsp45 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp45 >= yyvsc45 or yyvs45 = Void or yyspecial_routines45 = Void then
		if yyvs45 = Void or yyspecial_routines45 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs45")
			end
			create yyspecial_routines45
			yyvsc45 := yyInitial_yyvs_size
			yyvs45 := yyspecial_routines45.make (yyvsc45)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs45")
			end
			yyvsc45 := yyvsc45 + yyInitial_yyvs_size
			yyvs45 := yyspecial_routines45.resize (yyvs45, yyvsc45)
		end
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
when 183 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1488")
end

			create yyval44.make(yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp44 := yyvsp44 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp44 >= yyvsc44 or yyvs44 = Void or yyspecial_routines44 = Void then
		if yyvs44 = Void or yyspecial_routines44 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs44")
			end
			create yyspecial_routines44
			yyvsc44 := yyInitial_yyvs_size
			yyvs44 := yyspecial_routines44.make (yyvsc44)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs44")
			end
			yyvsc44 := yyvsc44 + yyInitial_yyvs_size
			yyvs44 := yyspecial_routines44.resize (yyvs44, yyvsc44)
		end
	end
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
when 184 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1494")
end

			yyval2 := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 185 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1498")
end

			yyval2 := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 186 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1510")
end

			yyval2 := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 187 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1514")
end

			yyval2 := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 188 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1518")
end

			yyval2 := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 189 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1522")
end

			yyval2 := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 190 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1528")
end

			yyval2 := yyvs2.item (yyvsp2)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
when 191 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1534")
end

			create yyval27.make(0)
			yyval27.extend(yyvs2.item (yyvsp2 - 1))
			yyval27.extend(yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp27 := yyvsp27 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp27 >= yyvsc27 or yyvs27 = Void or yyspecial_routines27 = Void then
		if yyvs27 = Void or yyspecial_routines27 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs27")
			end
			create yyspecial_routines27
			yyvsc27 := yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.make (yyvsc27)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs27")
			end
			yyvsc27 := yyvsc27 + yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.resize (yyvs27, yyvsc27)
		end
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
when 192 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1540")
end

			yyvs27.item (yyvsp27).extend(yyvs2.item (yyvsp2))
			yyval27 := yyvs27.item (yyvsp27)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
when 193 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1550")
end

			yyval27 := yyvs27.item (yyvsp27)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -2
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
when 194 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1554")
end

			create yyval27.make (0)
			yyval27.extend (yyvs2.item (yyvsp2))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp27 := yyvsp27 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp27 >= yyvsc27 or yyvs27 = Void or yyspecial_routines27 = Void then
		if yyvs27 = Void or yyspecial_routines27 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs27")
			end
			create yyspecial_routines27
			yyvsc27 := yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.make (yyvsc27)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs27")
			end
			yyvsc27 := yyvsc27 + yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.resize (yyvs27, yyvsc27)
		end
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
when 195 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1561")
end

			yyval3 := yyvs3.item (yyvsp3)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines3.force (yyvs3, yyval3, yyvsp3)
end
when 196 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1564")
end

			yyval3 := yyvs3.item (yyvsp3)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines3.force (yyvs3, yyval3, yyvsp3)
end
when 197 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1567")
end

			yyval3 := - yyvs3.item (yyvsp3)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines3.force (yyvs3, yyval3, yyvsp3)
end
when 198 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1572")
end

			create yyval28.make(0)
			yyval28.extend(yyvs3.item (yyvsp3 - 1))
			yyval28.extend(yyvs3.item (yyvsp3))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp28 := yyvsp28 + 1
	yyvsp3 := yyvsp3 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp28 >= yyvsc28 or yyvs28 = Void or yyspecial_routines28 = Void then
		if yyvs28 = Void or yyspecial_routines28 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs28")
			end
			create yyspecial_routines28
			yyvsc28 := yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.make (yyvsc28)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs28")
			end
			yyvsc28 := yyvsc28 + yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.resize (yyvs28, yyvsc28)
		end
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
when 199 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1578")
end

			yyvs28.item (yyvsp28).extend(yyvs3.item (yyvsp3))
			yyval28 := yyvs28.item (yyvsp28)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp3 := yyvsp3 -1
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
when 200 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1583")
end

			create yyval28.make(0)
			yyval28.extend(yyvs3.item (yyvsp3))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp28 := yyvsp28 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp28 >= yyvsc28 or yyvs28 = Void or yyspecial_routines28 = Void then
		if yyvs28 = Void or yyspecial_routines28 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs28")
			end
			create yyspecial_routines28
			yyvsc28 := yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.make (yyvsc28)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs28")
			end
			yyvsc28 := yyvsc28 + yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.resize (yyvs28, yyvsc28)
		end
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
when 201 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1590")
end

			if yyvs3.item (yyvsp3 - 1) <= yyvs3.item (yyvsp3) then
				create yyval37.make_bounded (yyvs3.item (yyvsp3 - 1), yyvs3.item (yyvsp3), True, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs3.item (yyvsp3 - 1).out, yyvs3.item (yyvsp3).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -2
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 202 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1598")
end

			if yyvs3.item (yyvsp3 - 1) <= yyvs3.item (yyvsp3) then
				create yyval37.make_bounded (yyvs3.item (yyvsp3 - 1), yyvs3.item (yyvsp3), False, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs3.item (yyvsp3 - 1).out, yyvs3.item (yyvsp3).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp3 := yyvsp3 -2
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 203 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1606")
end

			if yyvs3.item (yyvsp3 - 1) <= yyvs3.item (yyvsp3) then
				create yyval37.make_bounded (yyvs3.item (yyvsp3 - 1), yyvs3.item (yyvsp3), True, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs3.item (yyvsp3 - 1).out, yyvs3.item (yyvsp3).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp3 := yyvsp3 -2
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 204 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1614")
end

			if yyvs3.item (yyvsp3 - 1) <= yyvs3.item (yyvsp3) then
				create yyval37.make_bounded (yyvs3.item (yyvsp3 - 1), yyvs3.item (yyvsp3), False, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs3.item (yyvsp3 - 1).out, yyvs3.item (yyvsp3).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -5
	yyvsp3 := yyvsp3 -2
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 205 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1622")
end

			create yyval37.make_lower_unbounded (yyvs3.item (yyvsp3), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 206 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1626")
end

			create yyval37.make_lower_unbounded (yyvs3.item (yyvsp3), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 207 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1630")
end

			create yyval37.make_upper_unbounded (yyvs3.item (yyvsp3), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 208 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1634")
end

			create yyval37.make_upper_unbounded (yyvs3.item (yyvsp3), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp3 := yyvsp3 -1
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 209 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1638")
end

			create yyval37.make_point(yyvs3.item (yyvsp3))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp37 := yyvsp37 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp3 := yyvsp3 -1
	if yyvsp37 >= yyvsc37 or yyvs37 = Void or yyspecial_routines37 = Void then
		if yyvs37 = Void or yyspecial_routines37 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs37")
			end
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs37")
			end
			yyvsc37 := yyvsc37 + yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.resize (yyvs37, yyvsc37)
		end
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
when 210 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1644")
end

			yyval4 := yyvs4.item (yyvsp4)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines4.force (yyvs4, yyval4, yyvsp4)
end
when 211 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1648")
end

			yyval4 := yyvs4.item (yyvsp4)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines4.force (yyvs4, yyval4, yyvsp4)
end
when 212 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1652")
end

			yyval4 := - yyvs4.item (yyvsp4)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines4.force (yyvs4, yyval4, yyvsp4)
end
when 213 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1658")
end

			create yyval29.make(0)
			yyval29.extend(yyvs4.item (yyvsp4 - 1))
			yyval29.extend(yyvs4.item (yyvsp4))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp29 := yyvsp29 + 1
	yyvsp4 := yyvsp4 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp29 >= yyvsc29 or yyvs29 = Void or yyspecial_routines29 = Void then
		if yyvs29 = Void or yyspecial_routines29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
when 214 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1664")
end

			yyvs29.item (yyvsp29).extend(yyvs4.item (yyvsp4))
			yyval29 := yyvs29.item (yyvsp29)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 -1
	yyvsp4 := yyvsp4 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
when 215 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1669")
end

			create yyval29.make(0)
			yyval29.extend(yyvs4.item (yyvsp4))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp29 := yyvsp29 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp29 >= yyvsc29 or yyvs29 = Void or yyspecial_routines29 = Void then
		if yyvs29 = Void or yyspecial_routines29 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs29")
			end
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs29")
			end
			yyvsc29 := yyvsc29 + yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.resize (yyvs29, yyvsc29)
		end
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
when 216 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1676")
end

			if yyvs4.item (yyvsp4 - 1) <= yyvs4.item (yyvsp4) then
				create yyval38.make_bounded (yyvs4.item (yyvsp4 - 1), yyvs4.item (yyvsp4), True, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs4.item (yyvsp4 - 1).out, yyvs4.item (yyvsp4).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp4 := yyvsp4 -2
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 217 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1684")
end

			if yyvs4.item (yyvsp4 - 1) <= yyvs4.item (yyvsp4) then
				create yyval38.make_bounded (yyvs4.item (yyvsp4 - 1), yyvs4.item (yyvsp4), False, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs4.item (yyvsp4 - 1).out, yyvs4.item (yyvsp4).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp4 := yyvsp4 -2
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 218 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1692")
end

			if yyvs4.item (yyvsp4 - 1) <= yyvs4.item (yyvsp4) then
				create yyval38.make_bounded (yyvs4.item (yyvsp4 - 1), yyvs4.item (yyvsp4), True, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs4.item (yyvsp4 - 1).out, yyvs4.item (yyvsp4).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp4 := yyvsp4 -2
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 219 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1700")
end

			if yyvs4.item (yyvsp4 - 1) <= yyvs4.item (yyvsp4) then
				create yyval38.make_bounded (yyvs4.item (yyvsp4 - 1), yyvs4.item (yyvsp4), False, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs4.item (yyvsp4 - 1).out, yyvs4.item (yyvsp4).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -5
	yyvsp4 := yyvsp4 -2
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 220 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1708")
end

			create yyval38.make_lower_unbounded (yyvs4.item (yyvsp4), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp4 := yyvsp4 -1
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 221 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1712")
end

			create yyval38.make_lower_unbounded (yyvs4.item (yyvsp4), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp4 := yyvsp4 -1
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 222 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1716")
end

			create yyval38.make_upper_unbounded (yyvs4.item (yyvsp4), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp4 := yyvsp4 -1
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 223 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1720")
end

			create yyval38.make_upper_unbounded (yyvs4.item (yyvsp4), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp4 := yyvsp4 -1
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 224 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1724")
end

			create yyval38.make_point(yyvs4.item (yyvsp4))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp38 := yyvsp38 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp4 := yyvsp4 -1
	if yyvsp38 >= yyvsc38 or yyvs38 = Void or yyspecial_routines38 = Void then
		if yyvs38 = Void or yyspecial_routines38 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs38")
			end
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs38")
			end
			yyvsc38 := yyvsc38 + yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.resize (yyvs38, yyvsc38)
		end
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
when 225 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1730")
end

			yyval20 := True

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp20 := yyvsp20 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp20 >= yyvsc20 or yyvs20 = Void or yyspecial_routines20 = Void then
		if yyvs20 = Void or yyspecial_routines20 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs20")
			end
			create yyspecial_routines20
			yyvsc20 := yyInitial_yyvs_size
			yyvs20 := yyspecial_routines20.make (yyvsc20)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs20")
			end
			yyvsc20 := yyvsc20 + yyInitial_yyvs_size
			yyvs20 := yyspecial_routines20.resize (yyvs20, yyvsc20)
		end
	end
	yyspecial_routines20.force (yyvs20, yyval20, yyvsp20)
end
when 226 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1734")
end

			yyval20 := False

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp20 := yyvsp20 + 1
	yyvsp1 := yyvsp1 -1
	if yyvsp20 >= yyvsc20 or yyvs20 = Void or yyspecial_routines20 = Void then
		if yyvs20 = Void or yyspecial_routines20 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs20")
			end
			create yyspecial_routines20
			yyvsc20 := yyInitial_yyvs_size
			yyvs20 := yyspecial_routines20.make (yyvsc20)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs20")
			end
			yyvsc20 := yyvsc20 + yyInitial_yyvs_size
			yyvs20 := yyspecial_routines20.resize (yyvs20, yyvsc20)
		end
	end
	yyspecial_routines20.force (yyvs20, yyval20, yyvsp20)
end
when 227 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1782")
end

			if valid_iso8601_date(yyvs2.item (yyvsp2)) then
				create yyval21.make_from_string(yyvs2.item (yyvsp2))
			else
				abort_with_error (ec_VIDV, <<yyvs2.item (yyvsp2)>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp21 := yyvsp21 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp21 >= yyvsc21 or yyvs21 = Void or yyspecial_routines21 = Void then
		if yyvs21 = Void or yyspecial_routines21 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs21")
			end
			create yyspecial_routines21
			yyvsc21 := yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.make (yyvsc21)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs21")
			end
			yyvsc21 := yyvsc21 + yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.resize (yyvs21, yyvsc21)
		end
	end
	yyspecial_routines21.force (yyvs21, yyval21, yyvsp21)
end
when 228 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1810")
end

			if yyvs21.item (yyvsp21 - 1) <= yyvs21.item (yyvsp21) then
				create yyval40.make_bounded (yyvs21.item (yyvsp21 - 1), yyvs21.item (yyvsp21), True, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs21.item (yyvsp21 - 1).out, yyvs21.item (yyvsp21).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp21 := yyvsp21 -2
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 229 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1818")
end

			if yyvs21.item (yyvsp21 - 1) <= yyvs21.item (yyvsp21) then
				create yyval40.make_bounded (yyvs21.item (yyvsp21 - 1), yyvs21.item (yyvsp21), False, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs21.item (yyvsp21 - 1).out, yyvs21.item (yyvsp21).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp21 := yyvsp21 -2
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 230 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1826")
end

			if yyvs21.item (yyvsp21 - 1) <= yyvs21.item (yyvsp21) then
				create yyval40.make_bounded (yyvs21.item (yyvsp21 - 1), yyvs21.item (yyvsp21), True, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs21.item (yyvsp21 - 1).out, yyvs21.item (yyvsp21).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp21 := yyvsp21 -2
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 231 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1834")
end

			if yyvs21.item (yyvsp21 - 1) <= yyvs21.item (yyvsp21) then
				create yyval40.make_bounded (yyvs21.item (yyvsp21 - 1), yyvs21.item (yyvsp21), False, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs21.item (yyvsp21 - 1).out, yyvs21.item (yyvsp21).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -5
	yyvsp21 := yyvsp21 -2
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 232 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1842")
end

			create yyval40.make_lower_unbounded (yyvs21.item (yyvsp21), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp21 := yyvsp21 -1
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 233 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1846")
end

			create yyval40.make_lower_unbounded (yyvs21.item (yyvsp21), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp21 := yyvsp21 -1
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 234 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1850")
end

			create yyval40.make_upper_unbounded (yyvs21.item (yyvsp21), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp21 := yyvsp21 -1
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 235 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1854")
end

			create yyval40.make_upper_unbounded (yyvs21.item (yyvsp21), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp21 := yyvsp21 -1
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 236 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1858")
end

			create yyval40.make_point(yyvs21.item (yyvsp21))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp40 := yyvsp40 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp21 := yyvsp21 -1
	if yyvsp40 >= yyvsc40 or yyvs40 = Void or yyspecial_routines40 = Void then
		if yyvs40 = Void or yyspecial_routines40 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs40")
			end
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs40")
			end
			yyvsc40 := yyvsc40 + yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.resize (yyvs40, yyvsc40)
		end
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
when 237 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1864")
end

			if valid_iso8601_time(yyvs2.item (yyvsp2)) then
				create yyval23.make_from_string(yyvs2.item (yyvsp2))
			else
				abort_with_error (ec_VITV, <<yyvs2.item (yyvsp2)>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp23 := yyvsp23 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp23 >= yyvsc23 or yyvs23 = Void or yyspecial_routines23 = Void then
		if yyvs23 = Void or yyspecial_routines23 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs23")
			end
			create yyspecial_routines23
			yyvsc23 := yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.make (yyvsc23)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs23")
			end
			yyvsc23 := yyvsc23 + yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.resize (yyvs23, yyvsc23)
		end
	end
	yyspecial_routines23.force (yyvs23, yyval23, yyvsp23)
end
when 238 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1892")
end

			if yyvs23.item (yyvsp23 - 1) <= yyvs23.item (yyvsp23) then
				create yyval39.make_bounded (yyvs23.item (yyvsp23 - 1), yyvs23.item (yyvsp23), True, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs23.item (yyvsp23 - 1).out, yyvs23.item (yyvsp23).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp23 := yyvsp23 -2
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 239 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1900")
end

			if yyvs23.item (yyvsp23 - 1) <= yyvs23.item (yyvsp23) then
				create yyval39.make_bounded (yyvs23.item (yyvsp23 - 1), yyvs23.item (yyvsp23), False, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs23.item (yyvsp23 - 1).out, yyvs23.item (yyvsp23).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp23 := yyvsp23 -2
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 240 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1908")
end

			if yyvs23.item (yyvsp23 - 1) <= yyvs23.item (yyvsp23) then
				create yyval39.make_bounded (yyvs23.item (yyvsp23 - 1), yyvs23.item (yyvsp23), True, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs23.item (yyvsp23 - 1).out, yyvs23.item (yyvsp23).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp23 := yyvsp23 -2
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 241 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1916")
end

			if yyvs23.item (yyvsp23 - 1) <= yyvs23.item (yyvsp23) then
				create yyval39.make_bounded (yyvs23.item (yyvsp23 - 1), yyvs23.item (yyvsp23), False, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs23.item (yyvsp23 - 1).out, yyvs23.item (yyvsp23).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -5
	yyvsp23 := yyvsp23 -2
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 242 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1924")
end

			create yyval39.make_lower_unbounded (yyvs23.item (yyvsp23), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp23 := yyvsp23 -1
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 243 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1928")
end

			create yyval39.make_lower_unbounded (yyvs23.item (yyvsp23), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp23 := yyvsp23 -1
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 244 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1932")
end

			create yyval39.make_upper_unbounded (yyvs23.item (yyvsp23), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp23 := yyvsp23 -1
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 245 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1936")
end

			create yyval39.make_upper_unbounded (yyvs23.item (yyvsp23), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp23 := yyvsp23 -1
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 246 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1940")
end

			create yyval39.make_point(yyvs23.item (yyvsp23))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp39 := yyvsp39 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp23 := yyvsp23 -1
	if yyvsp39 >= yyvsc39 or yyvs39 = Void or yyspecial_routines39 = Void then
		if yyvs39 = Void or yyspecial_routines39 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs39")
			end
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs39")
			end
			yyvsc39 := yyvsc39 + yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.resize (yyvs39, yyvsc39)
		end
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
when 247 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1946")
end

			if valid_iso8601_date_time(yyvs2.item (yyvsp2)) then
				create yyval22.make_from_string(yyvs2.item (yyvsp2))
			else
				abort_with_error (ec_VIDTV, <<yyvs2.item (yyvsp2)>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp22 := yyvsp22 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp22 >= yyvsc22 or yyvs22 = Void or yyspecial_routines22 = Void then
		if yyvs22 = Void or yyspecial_routines22 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs22")
			end
			create yyspecial_routines22
			yyvsc22 := yyInitial_yyvs_size
			yyvs22 := yyspecial_routines22.make (yyvsc22)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs22")
			end
			yyvsc22 := yyvsc22 + yyInitial_yyvs_size
			yyvs22 := yyspecial_routines22.resize (yyvs22, yyvsc22)
		end
	end
	yyspecial_routines22.force (yyvs22, yyval22, yyvsp22)
end
when 248 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1974")
end

			if yyvs22.item (yyvsp22 - 1) <= yyvs22.item (yyvsp22) then
				create yyval41.make_bounded (yyvs22.item (yyvsp22 - 1), yyvs22.item (yyvsp22), True, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs22.item (yyvsp22 - 1).out, yyvs22.item (yyvsp22).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp22 := yyvsp22 -2
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 249 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1982")
end

			if yyvs22.item (yyvsp22 - 1) <= yyvs22.item (yyvsp22) then
				create yyval41.make_bounded (yyvs22.item (yyvsp22 - 1), yyvs22.item (yyvsp22), False, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs22.item (yyvsp22 - 1).out, yyvs22.item (yyvsp22).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp22 := yyvsp22 -2
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 250 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1990")
end

			if yyvs22.item (yyvsp22 - 1) <= yyvs22.item (yyvsp22) then
				create yyval41.make_bounded (yyvs22.item (yyvsp22 - 1), yyvs22.item (yyvsp22), True, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs22.item (yyvsp22 - 1).out, yyvs22.item (yyvsp22).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp22 := yyvsp22 -2
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 251 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 1998")
end

			if yyvs22.item (yyvsp22 - 1) <= yyvs22.item (yyvsp22) then
				create yyval41.make_bounded (yyvs22.item (yyvsp22 - 1), yyvs22.item (yyvsp22), False, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs22.item (yyvsp22 - 1).out, yyvs22.item (yyvsp22).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -5
	yyvsp22 := yyvsp22 -2
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 252 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2006")
end

			create yyval41.make_lower_unbounded (yyvs22.item (yyvsp22), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp22 := yyvsp22 -1
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 253 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2010")
end

			create yyval41.make_lower_unbounded (yyvs22.item (yyvsp22), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp22 := yyvsp22 -1
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 254 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2014")
end

			create yyval41.make_upper_unbounded (yyvs22.item (yyvsp22), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp22 := yyvsp22 -1
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 255 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2018")
end

			create yyval41.make_upper_unbounded (yyvs22.item (yyvsp22), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp22 := yyvsp22 -1
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 256 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2022")
end

			create yyval41.make_point(yyvs22.item (yyvsp22))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp41 := yyvsp41 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp22 := yyvsp22 -1
	if yyvsp41 >= yyvsc41 or yyvs41 = Void or yyspecial_routines41 = Void then
		if yyvs41 = Void or yyspecial_routines41 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs41")
			end
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs41")
			end
			yyvsc41 := yyvsc41 + yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.resize (yyvs41, yyvsc41)
		end
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
when 257 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2028")
end

			if valid_iso8601_duration(yyvs2.item (yyvsp2)) then
				create yyval24.make_from_string(yyvs2.item (yyvsp2))
			else
				abort_with_error (ec_VIDUV, <<yyvs2.item (yyvsp2)>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp24 := yyvsp24 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp24 >= yyvsc24 or yyvs24 = Void or yyspecial_routines24 = Void then
		if yyvs24 = Void or yyspecial_routines24 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs24")
			end
			create yyspecial_routines24
			yyvsc24 := yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.make (yyvsc24)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs24")
			end
			yyvsc24 := yyvsc24 + yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.resize (yyvs24, yyvsc24)
		end
	end
	yyspecial_routines24.force (yyvs24, yyval24, yyvsp24)
end
when 258 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2056")
end

			if yyvs24.item (yyvsp24 - 1) <= yyvs24.item (yyvsp24) then
				create yyval42.make_bounded (yyvs24.item (yyvsp24 - 1), yyvs24.item (yyvsp24), True, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs24.item (yyvsp24 - 1).out, yyvs24.item (yyvsp24).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp24 := yyvsp24 -2
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 259 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2064")
end

			if yyvs24.item (yyvsp24 - 1) <= yyvs24.item (yyvsp24) then
				create yyval42.make_bounded (yyvs24.item (yyvsp24 - 1), yyvs24.item (yyvsp24), False, True)
			else
				abort_with_error (ec_VIVLO, <<yyvs24.item (yyvsp24 - 1).out, yyvs24.item (yyvsp24).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp24 := yyvsp24 -2
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 260 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2072")
end

			if yyvs24.item (yyvsp24 - 1) <= yyvs24.item (yyvsp24) then
				create yyval42.make_bounded (yyvs24.item (yyvsp24 - 1), yyvs24.item (yyvsp24), True, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs24.item (yyvsp24 - 1).out, yyvs24.item (yyvsp24).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -4
	yyvsp24 := yyvsp24 -2
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 261 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2080")
end

			if yyvs24.item (yyvsp24 - 1) <= yyvs24.item (yyvsp24) then
				create yyval42.make_bounded (yyvs24.item (yyvsp24 - 1), yyvs24.item (yyvsp24), False, False)
			else
				abort_with_error (ec_VIVLO, <<yyvs24.item (yyvsp24 - 1).out, yyvs24.item (yyvsp24).out>>)
			end

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -5
	yyvsp24 := yyvsp24 -2
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 262 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2088")
end

			create yyval42.make_lower_unbounded (yyvs24.item (yyvsp24), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp24 := yyvsp24 -1
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 263 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2092")
end

			create yyval42.make_lower_unbounded (yyvs24.item (yyvsp24), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp24 := yyvsp24 -1
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 264 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2096")
end

			create yyval42.make_upper_unbounded (yyvs24.item (yyvsp24), False)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp24 := yyvsp24 -1
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 265 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2100")
end

			create yyval42.make_upper_unbounded (yyvs24.item (yyvsp24), True)

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -3
	yyvsp24 := yyvsp24 -1
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
when 266 then
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'cadl_validator.y' at line 2104")
end

			create yyval42.make_point(yyvs24.item (yyvsp24))

if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp42 := yyvsp42 + 1
	yyvsp1 := yyvsp1 -2
	yyvsp24 := yyvsp24 -1
	if yyvsp42 >= yyvsc42 or yyvs42 = Void or yyspecial_routines42 = Void then
		if yyvs42 = Void or yyspecial_routines42 = Void then
			debug ("GEYACC")
				std.error.put_line ("Create yyvs42")
			end
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
		else
			debug ("GEYACC")
				std.error.put_line ("Resize yyvs42")
			end
			yyvsc42 := yyvsc42 + yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.resize (yyvs42, yyvsc42)
		end
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_error_action (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			when 464 then
					-- End-of-file expected action.
				report_eof_expected_error
			else
					-- Default action.
				report_error ("parse error")
			end
		end

feature {NONE} -- Table templates

	yytranslate_template: SPECIAL [INTEGER]
			-- Template for `yytranslate'
		once
			Result := yyfixed_array (<<
			    0,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			   85,   86,   75,   73,   83,   74,    2,   76,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,   84,   87,
			    2,   67,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,   81,    2,   82,   80,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    1,    2,    3,    4,
			    5,    6,    7,    8,    9,   10,   11,   12,   13,   14,
			   15,   16,   17,   18,   19,   20,   21,   22,   23,   24,
			   25,   26,   27,   28,   29,   30,   31,   32,   33,   34,
			   35,   36,   37,   38,   39,   40,   41,   42,   43,   44,

			   45,   46,   47,   48,   49,   50,   51,   52,   53,   54,
			   55,   56,   57,   58,   59,   60,   61,   62,   63,   64,
			   65,   66,   68,   69,   70,   71,   72,   77,   78,   79, yyDummy>>)
		end

	yyr1_template: SPECIAL [INTEGER]
			-- Template for `yyr1'
		once
			Result := yyfixed_array (<<
			    0,  151,  151,  151,  152,  152,  153,  155,  155,  155,
			   95,   95,  154,  154,  154,  158,  158,  158,  158,  158,
			  158,  158,  158,  158,  158,  158,   92,   92,   92,   93,
			   93,  159,  159,  104,  104,  103,  102,  102,  102,  102,
			  102,  102,  102,  100,  101,  101,  101,  101,  101,  101,
			  101,  101,  156,  157,  157,  160,  160,  160,  161,  161,
			  162,  162,  162,   89,   89,   90,   90,   88,   88,   91,
			   91,   91,   91,  105,  105,  105,  105,  105,  105,  110,
			  111,  111,  106,  106,  106,  106,  107,  136,  136,  136,
			  136,  113,  113,  108,  114,  114,  114,  109,  112,  112,

			  112,  135,  135,  135,  135,  135,  135,  134,  134,  134,
			  134,  134,   97,   97,   99,   99,  137,  137,  138,  138,
			  138,  138,  138,  138,  138,  138,   96,   96,   96,   98,
			   98,   98,   98,  150,  150,  150,  150,  150,  149,  149,
			  149,  149,  149,  147,  147,  147,  147,  147,  148,  148,
			  148,  148,  148,  145,  145,  145,  145,  145,  146,  146,
			  146,  146,  146,  146,  144,  144,  144,  144,  144,  144,
			  143,  143,  143,  143,  143,  143,  141,  141,  141,  141,
			  142,  140,  140,  139,  122,  122,   94,   94,   94,   94,
			  123,  124,  124,  125,  125,  115,  115,  115,  126,  126,

			  126,  128,  128,  128,  128,  128,  128,  128,  128,  128,
			  116,  116,  116,  127,  127,  127,  129,  129,  129,  129,
			  129,  129,  129,  129,  129,  117,  117,  118,  131,  131,
			  131,  131,  131,  131,  131,  131,  131,  120,  130,  130,
			  130,  130,  130,  130,  130,  130,  130,  119,  132,  132,
			  132,  132,  132,  132,  132,  132,  132,  121,  133,  133,
			  133,  133,  133,  133,  133,  133,  133, yyDummy>>)
		end

	yytypes1_template: SPECIAL [INTEGER]
			-- Template for `yytypes1'
		once
			Result := yyfixed_array (<<
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    2,    2,    2,    2,    2,    4,    3,    1,    7,    8,
			    2,   11,   16,   17,   18,   18,   18,   18,   18,   19,
			   19,   16,    3,    4,    2,    1,    1,    1,    1,    2,
			    2,   16,   16,    4,    3,    4,    3,    1,    2,    2,
			    1,    2,    2,    1,    1,    8,    2,    2,    1,    2,
			    1,    1,    1,    1,    2,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    2,    2,    1,    1,
			    1,   12,    1,    1,    1,    1,   16,    1,    1,    2,
			   16,    1,    2,   16,   16,    1,   16,    1,    1,    1,

			    1,    1,    1,    1,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,   14,    3,    4,   21,   22,   23,
			   24,   27,   27,   28,   29,   37,   38,   39,   40,   41,
			   42,   48,   49,   50,   51,   52,   53,   54,   55,    2,
			    2,   14,   45,   16,    1,    2,    2,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    3,    4,   21,   22,   23,   24,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,   12,   12,    1,    1,    1,
			    1,    1,    1,    3,   12,    3,    1,    1,    3,    4,

			   21,   22,   23,   24,    3,    4,   21,   22,   23,   24,
			    3,    4,   21,   22,   23,   24,    3,    4,   21,   22,
			   23,   24,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,   42,    1,    2,    1,    3,
			    1,    1,    1,    4,    1,    2,    3,    4,    1,    1,
			    1,   20,    2,    1,    2,    1,   22,    1,   24,    1,
			   21,    1,   23,    1,    4,    1,    3,    1,    1,   43,
			   43,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,

			    1,    1,    1,    1,    1,    3,    1,    4,    1,   21,
			    1,   22,    1,   23,    1,   24,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    6,    2,    1,    9,
			   10,    2,   11,   13,   14,   15,   15,   15,    3,   44,
			   45,   46,   47,    1,    1,    1,    1,    1,    1,    3,
			    1,    3,    1,    4,    1,   21,    1,   22,    1,   23,
			    1,   24,    3,    1,    4,    1,   21,    1,   22,    1,
			   23,    1,   24,    1,    3,   12,    1,    2,    1,    2,
			    2,    1,    1,   12,    1,    1,    1,    1,   12,    1,
			    1,    1,    3,    1,    4,    1,   21,    1,   22,    1,

			   23,    1,   24,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,   12,   43,    2,    1,    1,    2,    1,    1,
			    2,    1,    2,    1,    3,    3,   47,    2,    1,    1,
			    1,    1,    1,    1,    3,    1,    1,    1,    2,    2,
			    2,    1,    7,    1,    1,    1,    1,    1,    7,    1,
			    7,    1,    1,    1,    2,   12,    7,    1,    1,    1,
			    1,    1,    1,   12,    1,    1,    1, yyDummy>>)
		end

	yytypes2_template: SPECIAL [INTEGER]
			-- Template for `yytypes2'
		once
			Result := yyfixed_array (<<
			    1,    1,    1,    2,    3,    4,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    5,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    6,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1,    1,    1,
			    1,    1,    1,    1,    1,    1,    1,    1, yyDummy>>)
		end

	yydefact_template: SPECIAL [INTEGER]
			-- Template for `yydefact'
		once
			Result := yyfixed_array (<<
			    0,    0,    0,    0,    0,    0,    0,    0,   92,   91,
			    0,  100,  185,  189,  188,  210,  195,    3,    2,   67,
			  184,    0,   70,   74,   75,   76,   95,   71,   77,   94,
			   73,    0,   98,   99,    0,    1,    5,  126,    0,    0,
			    0,    0,    0,  212,  197,  211,  196,    0,   83,   82,
			   85,   11,   10,    0,    0,   68,  184,    8,    0,    0,
			   88,   89,   87,   90,    0,  111,  107,  108,  110,  109,
			  105,  103,  106,  104,  102,  101,    0,    0,    0,    0,
			    0,    6,  187,  186,   78,   96,    0,    0,    0,    9,
			   86,    0,  100,   97,   93,   72,   69,    0,    0,  128,

			   84,  171,  170,    0,  158,  143,  148,  153,  257,  247,
			  237,  227,  167,  164,    0,  133,  138,  144,  154,  149,
			  160,  165,  166,  134,  139,  135,  140,  150,  145,  155,
			  161,   51,   50,   48,   49,   46,   47,   45,   44,  181,
			  182,    0,    0,    0,   52,  112,  112,   14,    0,   12,
			   13,   53,   56,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,   79,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,   80,   81,    0,  116,  116,    4,   54,    0,
			  130,    0,    0,  195,    0,  129,  173,  172,    0,    0,

			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,  209,    0,  224,    0,  236,    0,  256,
			    0,  246,    0,  266,    0,  159,  194,  191,  200,  198,
			    0,    0,  215,  213,  193,  192,  199,  214,  226,  225,
			  175,  174,  190,  169,  168,  157,  156,  163,  162,  147,
			  146,  152,  151,  142,  141,  137,  136,    0,    0,   59,
			   58,    0,    0,  127,  208,  223,  235,  255,  245,  265,
			  206,  221,  233,  253,  243,  263,    0,  207,    0,  222,
			    0,  234,    0,  254,    0,  244,    0,  264,  205,  220,

			  232,  252,  242,  262,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,   24,    0,    0,    0,   23,  183,   25,   16,
			   17,    7,    0,   22,   43,  126,   34,   18,  133,   19,
			   20,   21,  176,   15,   62,   60,  126,    0,  132,  131,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,  201,    0,  216,    0,  228,    0,  248,
			    0,  238,    0,  258,  114,    0,    0,    0,   42,   36,
			    0,   57,    0,   35,    0,    0,    0,    0,    0,   55,
			   25,   61,    0,  202,    0,  217,    0,  229,    0,  249,

			    0,  239,    0,  259,  203,  218,  230,  250,  240,  260,
			    0,  113,  118,    0,   32,   30,   40,   38,    0,   28,
			   37,   63,  180,  179,  178,    0,  177,   29,  204,  219,
			  231,  251,  241,  261,  115,    0,  117,   41,    0,    0,
			   39,    0,   65,  121,  119,  120,    0,  126,   64,    0,
			    0,    0,    0,    0,    0,   26,   66,   33,  124,  125,
			  122,  123,  126,   27,    0,    0,    0, yyDummy>>)
		end

	yydefgoto_template: SPECIAL [INTEGER]
			-- Template for `yydefgoto'
		once
			Result := yyfixed_array (<<
			   18,  442,  450,   19,  329,  330,   56,  332,   81,  185,
			  194,  375,  333,  334,  335,  336,  337,   22,   23,   24,
			   25,   26,   27,   28,   29,   30,   31,   32,   33,  251,
			  117,  118,  119,  120,   34,  254,  121,  122,  123,  124,
			  125,  126,  127,  128,  129,  130,   76,   77,   64,  269,
			  413,  339,  340,  341,  342,  131,  132,  133,  134,  135,
			  136,  137,  138,  464,  343,   36,  148,   37,  149,  150,
			  345,  346,  151,  152,  347, yyDummy>>)
		end

	yypact_template: SPECIAL [INTEGER]
			-- Template for `yypact'
		once
			Result := yyfixed_array (<<
			  151,  242,  389,  342,   17,   30,  654,  640, -32768, -32768,
			  625,  624, -32768, -32768, -32768, -32768, -32768, -32768,  384, -32768,
			  330,    7,  345, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768,  553, -32768, -32768,  588, -32768,  623,   -1,  501,  587,
			  579,  400,  471, -32768, -32768, -32768, -32768,  501, -32768, -32768,
			 -32768, -32768, -32768,  622,  621, -32768, -32768, -32768,  322,  637,
			 -32768, -32768, -32768, -32768,  501, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768,   48,   48,  178,  616,
			   20, -32768, -32768, -32768, -32768, -32768,  349,  583,  558, -32768,
			  345,   48, -32768,  479,  479, -32768,  345,   18,  615, -32768,

			 -32768,  581,  580,  209,  586, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768,  578,  610,  577,  576, -32768, -32768, -32768,
			 -32768,  575, -32768,  572,  571, -32768, -32768, -32768, -32768, -32768,
			 -32768,  566,  561,  560,  559,  556,  555,  554,  550, -32768,
			 -32768,  609,  608,  438, -32768,  599,  599, -32768,  605, -32768,
			  158, -32768,  589,   66,  585,  596,  265,  265,  265,  265,
			  355,  341,  337,  329,  278,  264,  582,  132, -32768,  160,
			  164,   22,  123,  238,  147,  134,   29,   26,   27,  142,
			  125,   44, -32768, -32768,  574,  573,  573, -32768, -32768,  584,
			 -32768,  607,  598,  513,  503, -32768, -32768, -32768,  569,  568,

			  567,  565,  564,  563,  562,  557,  545,  544,  538,  537,
			  257,  223,  173,  163,  118,   -3,  534,  532,  529,  526,
			  505,  504,  224, -32768,  221, -32768,   21, -32768,  124, -32768,
			   46, -32768,  101, -32768,  248, -32768, -32768, -32768, -32768, -32768,
			  527,  524, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768,  499,  485, -32768,
			 -32768,  475,  115, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768,  187, -32768,   80, -32768,
			    0, -32768,  -10, -32768,   14, -32768,   13, -32768, -32768, -32768,

			 -32768, -32768, -32768, -32768,  123,  493,  238,  488,  453,  487,
			  446,  484,  443,  483,  393,  478,  393,  393,  393,  393,
			  490,  454, -32768,    7,    4,    7, -32768, -32768,  461, -32768,
			 -32768,  472,   10, -32768, -32768,   -1,  433, -32768,   -7, -32768,
			 -32768,  167, -32768, -32768, -32768, -32768,   -1,  419, -32768, -32768,
			  123,  445,  238,  442,  453,  440,  446,  427,  443,  424,
			  393,  423,  422, -32768,  405, -32768,  404, -32768,  396, -32768,
			  395, -32768,  390, -32768,  376,  391,   66,  358, -32768,  120,
			    5, -32768,    7, -32768,  373,  386,   38,  123,  381, -32768,
			 -32768, -32768,  363, -32768,  353, -32768,  347, -32768,  339, -32768,

			  317, -32768,  309, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			  328, -32768,  236,  283, -32768, -32768, -32768,  256,  281, -32768,
			  292,  228, -32768, -32768, -32768,  175, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768,  325, -32768, -32768,  191,  128,
			 -32768,  384,  195,  180,  153,   75,  157,   -1,  384,  384,
			  148,   15,  130,  105,  -24, -32768,  384, -32768, -32768, -32768,
			 -32768, -32768,   -1, -32768,   43,   23, -32768, yyDummy>>)
		end

	yypgoto_template: SPECIAL [INTEGER]
			-- Template for `yypgoto'
		once
			Result := yyfixed_array (<<
			 -127, -32768, -32768,  -18, -32768, -32768,    1,  682, -331,  535,
			  303, -32768, -32768,  326, -32768, -32768, -32768,   87, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768,   37,  -85,  -79, -32768,
			  -49,  -53,  -59,  -96, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768,  514, -32768, -32768, -32768,  491,
			 -32768, -32768,  590, -32768,  289, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768,  675, -32768, -32768, -32768,  403, -32768,
			  324, -32768,  517, -32768, -32768, yyDummy>>)
		end

	yytable_template: SPECIAL [INTEGER]
			-- Template for `yytable'
		once
			Result := yyfixed_array (<<
			   55,   20,  115,  115,  383,  378,  419,  165,  116,  116,
			   14,   13,  109,   14,   13,  388,   14,   13,  160,  147,
			  111,   99,   59,  466,  161,  385,  146,  257,  259,  297,
			  255,   50,  245,   48,  145,  110,  108,   80,   42,  423,
			  296,  111,   16,  465,  164,  265,   49,  111,   16,  108,
			  163,  109,   16,   15,  162,  459,  458,  382,  462,  356,
			  203,  209,  215,  221,   92,   98,  244,  110,  195,  354,
			  193,  198,  204,  210,  216,   42,  169,  199,  205,  211,
			  217,  258,  360,  358,  239,   15,  418,  246,   41,   58,
			  308,  243,   58,  144,  247,   58,  266,  202,  208,  214,

			  220,  264,   47,  201,  207,  213,  219,  200,  206,  212,
			  218,  192,  191,   93,   94,  312,  455,  192,  191,   16,
			  262,    3,    2,  256,  108,   41,  263,   16,  143,  260,
			   15,  463,  417,   91,   86,  253,  315,  305,  165,  192,
			  191,  190,  237,  261,  252,  307,  109,  461,  250,  352,
			  295,   90,   17,  241,  240,   16,   15,   14,   13,   12,
			  454,  294,  453,  110,   16,   96,  146,   11,   10,   15,
			  314,  313,  460,  416,  145,  311,  236,  309,  457,   95,
			  249,  248,   16,   15,    9,    8,  338,  349,  192,  191,
			  348,   16,  116,  310,   11,  293,  192,  191,  241,  240,

			  361,  351,    7,    6,  238,  291,  292,  385,  242,  353,
			  447,    9,    8,   16,   15,    5,  290,    4,  372,  362,
			  203,  209,  215,  221,    3,    2,   15,  364,   16,  111,
			  110,  109,  108,  192,  191,  359,    1,  241,  240,  357,
			  452,  355,    5,   15,    4,  449,   16,   15,   40,   39,
			  387,    3,    2,  370,  386,  289,  350,  368,   11,  366,
			  192,  191,  338,   38,  402,  392,  288,  451,  116,   16,
			   15,  108,  331,  394,  446,    9,    8,  441,  159,  158,
			  157,  156,    3,    2,  439,  111,  110,  109,  108,  287,
			  306,  195,  438,  304,  241,  240,  233,  192,  191,  400,

			  286,  424,  425,  398,  440,  396,    5,  232,    4,  437,
			  231,  241,  240,  436,  448,    3,    2,  319,  318,  317,
			  316,  230,  456,  435,  377,  379,  380,   38,   40,   39,
			   -7,   -7,  434,   59,   -7,   -7,   -7,   -7,    3,    2,
			   -7,  433,   57,   -7,   -7,   -7,   46,   45,  331,  432,
			   -7,   -7,   -7,   -7,   -7,   -7,   -7,   -7,   -7,  415,
			   -7,  229,   -7,   -7,   -7,  445,  444,  443,   -7,  227,
			  414,  431,  228,  225,  -31,   -7,   -7,   -7,   -7,  430,
			  226,   -7,   -7,  420,  224,  429,   -7,  223,   16,   15,
			   14,   13,   12,   44,   43,  428,  -31,  427,  222,  422,

			   11,   10,  421,   -7,   -7,   63,   62,   61,   60,   63,
			   62,   61,   60,  114,  141,   -7,  108,    9,    8,  410,
			  390,  411,  409,   16,   15,   14,   13,  408,  407,  113,
			   55,  327,  140,  139,  112,  100,  406,  405,   55,  111,
			  110,  109,  108,  107,  106,  105,  104,  326,    5,  389,
			    4,  103,  102,  101,  404,  403,  401,    3,    2,  399,
			   63,   62,   61,   60,  110,  325,  324,  323,  109,    1,
			    7,    6,  397,  111,  395,  322,  328,  393,  384,   16,
			   15,   14,   13,  376,   57,  113,   84,  327,  140,  139,
			  112,  381,    3,    2,  374,  111,  110,  109,  108,  107,

			  106,  105,  104,  326,   58,   16,   15,  103,  102,  101,
			  373,   69,   68,   67,   66,  371,  369,   11,   65,  367,
			  365,  325,  324,  323,   85,  363,    7,    6,  320,   45,
			  321,  322,   43,  273,    9,    8,  303,  302,   75,   74,
			   73,   72,   71,   70,   69,   68,   67,   66,    3,    2,
			  144,   65,   69,   68,   67,   66,  272,   85,  301,   65,
			   58,  300,   16,   15,  299,    5,  298,    4,  113,  285,
			  284,  140,  139,  112,    3,    2,  283,  282,  111,  110,
			  109,  108,  107,  106,  105,  104,   38,   16,   15,  281,
			  103,  102,  101,  113,  280,  279,  278,  277,  112,  276,

			  275,  274,   46,  111,  110,  109,  108,  107,  106,  105,
			  104,   44,  268,  271,  234,  103,  102,  101,  196,  267,
			   75,   74,   73,   72,   71,   70,   69,   68,   67,   66,
			  197,    3,    2,   65,  189,  187,  184,  181,  183,  182,
			  168,  180,  179,  178,  153,   97,  177,  176,  175,   89,
			   88,   87,   52,  174,  173,  172,    3,    2,  171,  170,
			  169,  167,  166,  155,  154,   83,   51,  188,   79,   54,
			   53,  391,   78,   82,  344,   35,  426,  270,  142,  412,
			  235,  186,   21, yyDummy>>)
		end

	yycheck_template: SPECIAL [INTEGER]
			-- Template for `yycheck'
		once
			Result := yyfixed_array (<<
			   18,    0,   87,   88,  335,    1,    1,  103,   87,   88,
			    6,    7,   22,    6,    7,  346,    6,    7,  103,    1,
			   20,    1,   21,    0,  103,   32,    8,    1,    1,   32,
			    1,    1,   10,   16,   16,   21,   23,   38,    1,    1,
			   43,   20,    4,    0,  103,    1,   16,   20,    4,   23,
			  103,   22,    4,    5,  103,   40,   41,   47,   82,   69,
			  156,  157,  158,  159,   16,   45,   44,   21,  153,   69,
			    4,  156,  157,  158,  159,   38,   83,  156,  157,  158,
			  159,  177,   69,   69,  169,    5,   81,  172,    1,   85,
			   69,  170,   85,   75,  173,   85,  181,  156,  157,  158,

			  159,  180,   85,  156,  157,  158,  159,  156,  157,  158,
			  159,   73,   74,   76,   77,   69,  447,   73,   74,    4,
			  179,   73,   74,  176,   23,   38,    1,    4,   91,  178,
			    5,  462,   12,   85,   47,    1,  232,  222,  234,   73,
			   74,   75,   10,    1,   10,  224,   22,   42,    1,   69,
			   32,   64,    1,   73,   74,    4,    5,    6,    7,    8,
			    3,   43,   87,   21,    4,   78,    8,   16,   17,    5,
			   69,  230,   42,   53,   16,  228,   44,  226,   30,    1,
			   33,   34,    4,    5,   33,   34,  271,  272,   73,   74,
			   75,    4,  271,   69,   16,   32,   73,   74,   73,   74,

			  296,  286,   51,   52,   44,   32,   43,   32,   44,  288,
			   82,   33,   34,    4,    5,   64,   43,   66,  314,  304,
			  316,  317,  318,  319,   73,   74,    5,  306,    4,   20,
			   21,   22,   23,   73,   74,  294,   85,   73,   74,  292,
			   87,  290,   64,    5,   66,   50,    4,    5,    6,    7,
			   83,   73,   74,  312,   87,   32,   69,  310,   16,  308,
			   73,   74,  347,   85,  360,  350,   43,   87,  347,    4,
			    5,   23,  271,  352,   83,   33,   34,   49,   69,   70,
			   71,   72,   73,   74,    3,   20,   21,   22,   23,   32,
			   69,  376,   11,   69,   73,   74,   32,   73,   74,  358,

			   43,  386,  387,  356,   12,  354,   64,   43,   66,   53,
			   32,   73,   74,   30,  441,   73,   74,   69,   70,   71,
			   72,   43,  449,   87,  323,  324,  325,   85,    6,    7,
			    0,    1,    4,  332,    4,    5,    6,    7,   73,   74,
			   10,   32,   12,   13,   14,   15,    4,    5,  347,   32,
			   20,   21,   22,   23,   24,   25,   26,   27,   28,    1,
			   30,   32,   32,   33,   34,   40,   41,   42,   38,   32,
			   12,   32,   43,   32,   16,   45,   46,   47,   48,   32,
			   43,   51,   52,  382,   43,   32,   56,   32,    4,    5,
			    6,    7,    8,    4,    5,   32,   38,   16,   43,   13,

			   16,   17,   29,   73,   74,   60,   61,   62,   63,   60,
			   61,   62,   63,   87,   88,   85,   23,   33,   34,   43,
			    1,   30,   32,    4,    5,    6,    7,   32,   32,   10,
			  448,   12,   13,   14,   15,   86,   32,   32,  456,   20,
			   21,   22,   23,   24,   25,   26,   27,   28,   64,   30,
			   66,   32,   33,   34,   32,   32,   32,   73,   74,   32,
			   60,   61,   62,   63,   21,   46,   47,   48,   22,   85,
			   51,   52,   32,   20,   32,   56,    1,   32,   45,    4,
			    5,    6,    7,   29,   12,   10,   86,   12,   13,   14,
			   15,   30,   73,   74,    4,   20,   21,   22,   23,   24,

			   25,   26,   27,   28,   85,    4,    5,   32,   33,   34,
			   32,   73,   74,   75,   76,   32,   32,   16,   80,   32,
			   32,   46,   47,   48,   86,   32,   51,   52,   29,    5,
			   45,   56,    5,   30,   33,   34,   32,   32,   67,   68,
			   69,   70,   71,   72,   73,   74,   75,   76,   73,   74,
			   75,   80,   73,   74,   75,   76,   43,   86,   32,   80,
			   85,   32,    4,    5,   32,   64,   32,   66,   10,   32,
			   32,   13,   14,   15,   73,   74,   32,   32,   20,   21,
			   22,   23,   24,   25,   26,   27,   85,    4,    5,   32,
			   32,   33,   34,   10,   32,   32,   32,   32,   15,   32,

			   32,   32,    4,   20,   21,   22,   23,   24,   25,   26,
			   27,    4,   39,   29,   32,   32,   33,   34,   33,   45,
			   67,   68,   69,   70,   71,   72,   73,   74,   75,   76,
			   34,   73,   74,   80,   45,   30,   37,   87,   30,   30,
			   30,   87,   87,   87,   29,   29,   87,   87,   87,   12,
			   29,   29,   12,   87,   83,   83,   73,   74,   83,   83,
			   83,   83,   76,   83,   83,   86,   12,  150,   45,   45,
			   45,  347,   84,   86,  271,    0,  387,  186,   88,  376,
			  166,  146,    0, yyDummy>>)
		end

feature {NONE} -- Semantic value stacks

	yyvs1: SPECIAL [detachable ANY]
			-- Stack for semantic values of type detachable ANY

	yyvsc1: INTEGER
			-- Capacity of semantic value stack `yyvs1'

	yyvsp1: INTEGER
			-- Top of semantic value stack `yyvs1'

	yyspecial_routines1: detachable KL_SPECIAL_ROUTINES [detachable ANY] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [detachable ANY]

	yyvs2: SPECIAL [STRING]
			-- Stack for semantic values of type STRING

	yyvsc2: INTEGER
			-- Capacity of semantic value stack `yyvs2'

	yyvsp2: INTEGER
			-- Top of semantic value stack `yyvs2'

	yyspecial_routines2: detachable KL_SPECIAL_ROUTINES [STRING] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [STRING]

	yyvs3: SPECIAL [INTEGER]
			-- Stack for semantic values of type INTEGER

	yyvsc3: INTEGER
			-- Capacity of semantic value stack `yyvs3'

	yyvsp3: INTEGER
			-- Top of semantic value stack `yyvs3'

	yyspecial_routines3: detachable KL_SPECIAL_ROUTINES [INTEGER] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [INTEGER]

	yyvs4: SPECIAL [REAL]
			-- Stack for semantic values of type REAL

	yyvsc4: INTEGER
			-- Capacity of semantic value stack `yyvs4'

	yyvsp4: INTEGER
			-- Top of semantic value stack `yyvs4'

	yyspecial_routines4: detachable KL_SPECIAL_ROUTINES [REAL] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [REAL]

	yyvs5: SPECIAL [CHARACTER]
			-- Stack for semantic values of type CHARACTER

	yyvsc5: INTEGER
			-- Capacity of semantic value stack `yyvs5'

	yyvsp5: INTEGER
			-- Top of semantic value stack `yyvs5'

	yyspecial_routines5: detachable KL_SPECIAL_ROUTINES [CHARACTER] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [CHARACTER]

	yyvs6: SPECIAL [C_DOMAIN_TYPE]
			-- Stack for semantic values of type C_DOMAIN_TYPE

	yyvsc6: INTEGER
			-- Capacity of semantic value stack `yyvs6'

	yyvsp6: INTEGER
			-- Top of semantic value stack `yyvs6'

	yyspecial_routines6: detachable KL_SPECIAL_ROUTINES [C_DOMAIN_TYPE] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_DOMAIN_TYPE]

	yyvs7: SPECIAL [ARRAYED_LIST [ASSERTION]]
			-- Stack for semantic values of type ARRAYED_LIST [ASSERTION]

	yyvsc7: INTEGER
			-- Capacity of semantic value stack `yyvs7'

	yyvsp7: INTEGER
			-- Top of semantic value stack `yyvs7'

	yyspecial_routines7: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [ASSERTION]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ASSERTION]]

	yyvs8: SPECIAL [ASSERTION]
			-- Stack for semantic values of type ASSERTION

	yyvsc8: INTEGER
			-- Capacity of semantic value stack `yyvs8'

	yyvsp8: INTEGER
			-- Top of semantic value stack `yyvs8'

	yyspecial_routines8: detachable KL_SPECIAL_ROUTINES [ASSERTION] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ASSERTION]

	yyvs9: SPECIAL [C_ARCHETYPE_ROOT]
			-- Stack for semantic values of type C_ARCHETYPE_ROOT

	yyvsc9: INTEGER
			-- Capacity of semantic value stack `yyvs9'

	yyvsp9: INTEGER
			-- Top of semantic value stack `yyvs9'

	yyspecial_routines9: detachable KL_SPECIAL_ROUTINES [C_ARCHETYPE_ROOT] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_ARCHETYPE_ROOT]

	yyvs10: SPECIAL [ARCHETYPE_INTERNAL_REF]
			-- Stack for semantic values of type ARCHETYPE_INTERNAL_REF

	yyvsc10: INTEGER
			-- Capacity of semantic value stack `yyvs10'

	yyvsp10: INTEGER
			-- Top of semantic value stack `yyvs10'

	yyspecial_routines10: detachable KL_SPECIAL_ROUTINES [ARCHETYPE_INTERNAL_REF] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARCHETYPE_INTERNAL_REF]

	yyvs11: SPECIAL [SIBLING_ORDER]
			-- Stack for semantic values of type SIBLING_ORDER

	yyvsc11: INTEGER
			-- Capacity of semantic value stack `yyvs11'

	yyvsp11: INTEGER
			-- Top of semantic value stack `yyvs11'

	yyspecial_routines11: detachable KL_SPECIAL_ROUTINES [SIBLING_ORDER] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [SIBLING_ORDER]

	yyvs12: SPECIAL [MULTIPLICITY_INTERVAL]
			-- Stack for semantic values of type MULTIPLICITY_INTERVAL

	yyvsc12: INTEGER
			-- Capacity of semantic value stack `yyvs12'

	yyvsp12: INTEGER
			-- Top of semantic value stack `yyvs12'

	yyspecial_routines12: detachable KL_SPECIAL_ROUTINES [MULTIPLICITY_INTERVAL] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [MULTIPLICITY_INTERVAL]

	yyvs13: SPECIAL [C_PRIMITIVE_OBJECT]
			-- Stack for semantic values of type C_PRIMITIVE_OBJECT

	yyvsc13: INTEGER
			-- Capacity of semantic value stack `yyvs13'

	yyvsp13: INTEGER
			-- Top of semantic value stack `yyvs13'

	yyspecial_routines13: detachable KL_SPECIAL_ROUTINES [C_PRIMITIVE_OBJECT] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_PRIMITIVE_OBJECT]

	yyvs14: SPECIAL [C_PRIMITIVE]
			-- Stack for semantic values of type C_PRIMITIVE

	yyvsc14: INTEGER
			-- Capacity of semantic value stack `yyvs14'

	yyvsp14: INTEGER
			-- Top of semantic value stack `yyvs14'

	yyspecial_routines14: detachable KL_SPECIAL_ROUTINES [C_PRIMITIVE] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_PRIMITIVE]

	yyvs15: SPECIAL [ARCHETYPE_SLOT]
			-- Stack for semantic values of type ARCHETYPE_SLOT

	yyvsc15: INTEGER
			-- Capacity of semantic value stack `yyvs15'

	yyvsp15: INTEGER
			-- Top of semantic value stack `yyvs15'

	yyspecial_routines15: detachable KL_SPECIAL_ROUTINES [ARCHETYPE_SLOT] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARCHETYPE_SLOT]

	yyvs16: SPECIAL [EXPR_ITEM]
			-- Stack for semantic values of type EXPR_ITEM

	yyvsc16: INTEGER
			-- Capacity of semantic value stack `yyvs16'

	yyvsp16: INTEGER
			-- Top of semantic value stack `yyvs16'

	yyspecial_routines16: detachable KL_SPECIAL_ROUTINES [EXPR_ITEM] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [EXPR_ITEM]

	yyvs17: SPECIAL [EXPR_UNARY_OPERATOR]
			-- Stack for semantic values of type EXPR_UNARY_OPERATOR

	yyvsc17: INTEGER
			-- Capacity of semantic value stack `yyvs17'

	yyvsp17: INTEGER
			-- Top of semantic value stack `yyvs17'

	yyspecial_routines17: detachable KL_SPECIAL_ROUTINES [EXPR_UNARY_OPERATOR] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [EXPR_UNARY_OPERATOR]

	yyvs18: SPECIAL [EXPR_BINARY_OPERATOR]
			-- Stack for semantic values of type EXPR_BINARY_OPERATOR

	yyvsc18: INTEGER
			-- Capacity of semantic value stack `yyvs18'

	yyvsp18: INTEGER
			-- Top of semantic value stack `yyvs18'

	yyspecial_routines18: detachable KL_SPECIAL_ROUTINES [EXPR_BINARY_OPERATOR] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [EXPR_BINARY_OPERATOR]

	yyvs19: SPECIAL [EXPR_LEAF]
			-- Stack for semantic values of type EXPR_LEAF

	yyvsc19: INTEGER
			-- Capacity of semantic value stack `yyvs19'

	yyvsp19: INTEGER
			-- Top of semantic value stack `yyvs19'

	yyspecial_routines19: detachable KL_SPECIAL_ROUTINES [EXPR_LEAF] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [EXPR_LEAF]

	yyvs20: SPECIAL [BOOLEAN]
			-- Stack for semantic values of type BOOLEAN

	yyvsc20: INTEGER
			-- Capacity of semantic value stack `yyvs20'

	yyvsp20: INTEGER
			-- Top of semantic value stack `yyvs20'

	yyspecial_routines20: detachable KL_SPECIAL_ROUTINES [BOOLEAN] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [BOOLEAN]

	yyvs21: SPECIAL [ISO8601_DATE]
			-- Stack for semantic values of type ISO8601_DATE

	yyvsc21: INTEGER
			-- Capacity of semantic value stack `yyvs21'

	yyvsp21: INTEGER
			-- Top of semantic value stack `yyvs21'

	yyspecial_routines21: detachable KL_SPECIAL_ROUTINES [ISO8601_DATE] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ISO8601_DATE]

	yyvs22: SPECIAL [ISO8601_DATE_TIME]
			-- Stack for semantic values of type ISO8601_DATE_TIME

	yyvsc22: INTEGER
			-- Capacity of semantic value stack `yyvs22'

	yyvsp22: INTEGER
			-- Top of semantic value stack `yyvs22'

	yyspecial_routines22: detachable KL_SPECIAL_ROUTINES [ISO8601_DATE_TIME] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ISO8601_DATE_TIME]

	yyvs23: SPECIAL [ISO8601_TIME]
			-- Stack for semantic values of type ISO8601_TIME

	yyvsc23: INTEGER
			-- Capacity of semantic value stack `yyvs23'

	yyvsp23: INTEGER
			-- Top of semantic value stack `yyvs23'

	yyspecial_routines23: detachable KL_SPECIAL_ROUTINES [ISO8601_TIME] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ISO8601_TIME]

	yyvs24: SPECIAL [ISO8601_DURATION]
			-- Stack for semantic values of type ISO8601_DURATION

	yyvsc24: INTEGER
			-- Capacity of semantic value stack `yyvs24'

	yyvsp24: INTEGER
			-- Top of semantic value stack `yyvs24'

	yyspecial_routines24: detachable KL_SPECIAL_ROUTINES [ISO8601_DURATION] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ISO8601_DURATION]

	yyvs25: SPECIAL [CODE_PHRASE]
			-- Stack for semantic values of type CODE_PHRASE

	yyvsc25: INTEGER
			-- Capacity of semantic value stack `yyvs25'

	yyvsp25: INTEGER
			-- Top of semantic value stack `yyvs25'

	yyspecial_routines25: detachable KL_SPECIAL_ROUTINES [CODE_PHRASE] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [CODE_PHRASE]

	yyvs26: SPECIAL [URI]
			-- Stack for semantic values of type URI

	yyvsc26: INTEGER
			-- Capacity of semantic value stack `yyvs26'

	yyvsp26: INTEGER
			-- Top of semantic value stack `yyvs26'

	yyspecial_routines26: detachable KL_SPECIAL_ROUTINES [URI] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [URI]

	yyvs27: SPECIAL [ARRAYED_LIST [STRING]]
			-- Stack for semantic values of type ARRAYED_LIST [STRING]

	yyvsc27: INTEGER
			-- Capacity of semantic value stack `yyvs27'

	yyvsp27: INTEGER
			-- Top of semantic value stack `yyvs27'

	yyspecial_routines27: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [STRING]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [STRING]]

	yyvs28: SPECIAL [ARRAYED_LIST [INTEGER]]
			-- Stack for semantic values of type ARRAYED_LIST [INTEGER]

	yyvsc28: INTEGER
			-- Capacity of semantic value stack `yyvs28'

	yyvsp28: INTEGER
			-- Top of semantic value stack `yyvs28'

	yyspecial_routines28: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [INTEGER]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [INTEGER]]

	yyvs29: SPECIAL [ARRAYED_LIST [REAL]]
			-- Stack for semantic values of type ARRAYED_LIST [REAL]

	yyvsc29: INTEGER
			-- Capacity of semantic value stack `yyvs29'

	yyvsp29: INTEGER
			-- Top of semantic value stack `yyvs29'

	yyspecial_routines29: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [REAL]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [REAL]]

	yyvs30: SPECIAL [ARRAYED_LIST [CHARACTER_REF]]
			-- Stack for semantic values of type ARRAYED_LIST [CHARACTER_REF]

	yyvsc30: INTEGER
			-- Capacity of semantic value stack `yyvs30'

	yyvsp30: INTEGER
			-- Top of semantic value stack `yyvs30'

	yyspecial_routines30: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [CHARACTER_REF]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [CHARACTER_REF]]

	yyvs31: SPECIAL [ARRAYED_LIST [BOOLEAN_REF]]
			-- Stack for semantic values of type ARRAYED_LIST [BOOLEAN_REF]

	yyvsc31: INTEGER
			-- Capacity of semantic value stack `yyvs31'

	yyvsp31: INTEGER
			-- Top of semantic value stack `yyvs31'

	yyspecial_routines31: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [BOOLEAN_REF]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [BOOLEAN_REF]]

	yyvs32: SPECIAL [ARRAYED_LIST [ISO8601_DATE]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_DATE]

	yyvsc32: INTEGER
			-- Capacity of semantic value stack `yyvs32'

	yyvsp32: INTEGER
			-- Top of semantic value stack `yyvs32'

	yyspecial_routines32: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_DATE]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_DATE]]

	yyvs33: SPECIAL [ARRAYED_LIST [ISO8601_TIME]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_TIME]

	yyvsc33: INTEGER
			-- Capacity of semantic value stack `yyvs33'

	yyvsp33: INTEGER
			-- Top of semantic value stack `yyvs33'

	yyspecial_routines33: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_TIME]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_TIME]]

	yyvs34: SPECIAL [ARRAYED_LIST [ISO8601_DATE_TIME]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_DATE_TIME]

	yyvsc34: INTEGER
			-- Capacity of semantic value stack `yyvs34'

	yyvsp34: INTEGER
			-- Top of semantic value stack `yyvs34'

	yyspecial_routines34: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_DATE_TIME]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_DATE_TIME]]

	yyvs35: SPECIAL [ARRAYED_LIST [ISO8601_DURATION]]
			-- Stack for semantic values of type ARRAYED_LIST [ISO8601_DURATION]

	yyvsc35: INTEGER
			-- Capacity of semantic value stack `yyvs35'

	yyvsp35: INTEGER
			-- Top of semantic value stack `yyvs35'

	yyspecial_routines35: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [ISO8601_DURATION]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [ISO8601_DURATION]]

	yyvs36: SPECIAL [ARRAYED_LIST [CODE_PHRASE]]
			-- Stack for semantic values of type ARRAYED_LIST [CODE_PHRASE]

	yyvsc36: INTEGER
			-- Capacity of semantic value stack `yyvs36'

	yyvsp36: INTEGER
			-- Top of semantic value stack `yyvs36'

	yyspecial_routines36: detachable KL_SPECIAL_ROUTINES [ARRAYED_LIST [CODE_PHRASE]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ARRAYED_LIST [CODE_PHRASE]]

	yyvs37: SPECIAL [INTERVAL [INTEGER]]
			-- Stack for semantic values of type INTERVAL [INTEGER]

	yyvsc37: INTEGER
			-- Capacity of semantic value stack `yyvs37'

	yyvsp37: INTEGER
			-- Top of semantic value stack `yyvs37'

	yyspecial_routines37: detachable KL_SPECIAL_ROUTINES [INTERVAL [INTEGER]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [INTERVAL [INTEGER]]

	yyvs38: SPECIAL [INTERVAL [REAL]]
			-- Stack for semantic values of type INTERVAL [REAL]

	yyvsc38: INTEGER
			-- Capacity of semantic value stack `yyvs38'

	yyvsp38: INTEGER
			-- Top of semantic value stack `yyvs38'

	yyspecial_routines38: detachable KL_SPECIAL_ROUTINES [INTERVAL [REAL]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [INTERVAL [REAL]]

	yyvs39: SPECIAL [INTERVAL [ISO8601_TIME]]
			-- Stack for semantic values of type INTERVAL [ISO8601_TIME]

	yyvsc39: INTEGER
			-- Capacity of semantic value stack `yyvs39'

	yyvsp39: INTEGER
			-- Top of semantic value stack `yyvs39'

	yyspecial_routines39: detachable KL_SPECIAL_ROUTINES [INTERVAL [ISO8601_TIME]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [INTERVAL [ISO8601_TIME]]

	yyvs40: SPECIAL [INTERVAL [ISO8601_DATE]]
			-- Stack for semantic values of type INTERVAL [ISO8601_DATE]

	yyvsc40: INTEGER
			-- Capacity of semantic value stack `yyvs40'

	yyvsp40: INTEGER
			-- Top of semantic value stack `yyvs40'

	yyspecial_routines40: detachable KL_SPECIAL_ROUTINES [INTERVAL [ISO8601_DATE]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [INTERVAL [ISO8601_DATE]]

	yyvs41: SPECIAL [INTERVAL [ISO8601_DATE_TIME]]
			-- Stack for semantic values of type INTERVAL [ISO8601_DATE_TIME]

	yyvsc41: INTEGER
			-- Capacity of semantic value stack `yyvs41'

	yyvsp41: INTEGER
			-- Top of semantic value stack `yyvs41'

	yyspecial_routines41: detachable KL_SPECIAL_ROUTINES [INTERVAL [ISO8601_DATE_TIME]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [INTERVAL [ISO8601_DATE_TIME]]

	yyvs42: SPECIAL [INTERVAL [ISO8601_DURATION]]
			-- Stack for semantic values of type INTERVAL [ISO8601_DURATION]

	yyvsc42: INTEGER
			-- Capacity of semantic value stack `yyvs42'

	yyvsp42: INTEGER
			-- Top of semantic value stack `yyvs42'

	yyspecial_routines42: detachable KL_SPECIAL_ROUTINES [INTERVAL [ISO8601_DURATION]] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [INTERVAL [ISO8601_DURATION]]

	yyvs43: SPECIAL [CARDINALITY]
			-- Stack for semantic values of type CARDINALITY

	yyvsc43: INTEGER
			-- Capacity of semantic value stack `yyvs43'

	yyvsp43: INTEGER
			-- Top of semantic value stack `yyvs43'

	yyspecial_routines43: detachable KL_SPECIAL_ROUTINES [CARDINALITY] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [CARDINALITY]

	yyvs44: SPECIAL [CONSTRAINT_REF]
			-- Stack for semantic values of type CONSTRAINT_REF

	yyvsc44: INTEGER
			-- Capacity of semantic value stack `yyvs44'

	yyvsp44: INTEGER
			-- Top of semantic value stack `yyvs44'

	yyspecial_routines44: detachable KL_SPECIAL_ROUTINES [CONSTRAINT_REF] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [CONSTRAINT_REF]

	yyvs45: SPECIAL [C_CODE_PHRASE]
			-- Stack for semantic values of type C_CODE_PHRASE

	yyvsc45: INTEGER
			-- Capacity of semantic value stack `yyvs45'

	yyvsp45: INTEGER
			-- Top of semantic value stack `yyvs45'

	yyspecial_routines45: detachable KL_SPECIAL_ROUTINES [C_CODE_PHRASE] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_CODE_PHRASE]

	yyvs46: SPECIAL [C_DV_ORDINAL]
			-- Stack for semantic values of type C_DV_ORDINAL

	yyvsc46: INTEGER
			-- Capacity of semantic value stack `yyvs46'

	yyvsp46: INTEGER
			-- Top of semantic value stack `yyvs46'

	yyspecial_routines46: detachable KL_SPECIAL_ROUTINES [C_DV_ORDINAL] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_DV_ORDINAL]

	yyvs47: SPECIAL [ORDINAL]
			-- Stack for semantic values of type ORDINAL

	yyvsc47: INTEGER
			-- Capacity of semantic value stack `yyvs47'

	yyvsp47: INTEGER
			-- Top of semantic value stack `yyvs47'

	yyspecial_routines47: detachable KL_SPECIAL_ROUTINES [ORDINAL] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [ORDINAL]

	yyvs48: SPECIAL [C_BOOLEAN]
			-- Stack for semantic values of type C_BOOLEAN

	yyvsc48: INTEGER
			-- Capacity of semantic value stack `yyvs48'

	yyvsp48: INTEGER
			-- Top of semantic value stack `yyvs48'

	yyspecial_routines48: detachable KL_SPECIAL_ROUTINES [C_BOOLEAN] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_BOOLEAN]

	yyvs49: SPECIAL [C_STRING]
			-- Stack for semantic values of type C_STRING

	yyvsc49: INTEGER
			-- Capacity of semantic value stack `yyvs49'

	yyvsp49: INTEGER
			-- Top of semantic value stack `yyvs49'

	yyspecial_routines49: detachable KL_SPECIAL_ROUTINES [C_STRING] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_STRING]

	yyvs50: SPECIAL [C_DATE_TIME]
			-- Stack for semantic values of type C_DATE_TIME

	yyvsc50: INTEGER
			-- Capacity of semantic value stack `yyvs50'

	yyvsp50: INTEGER
			-- Top of semantic value stack `yyvs50'

	yyspecial_routines50: detachable KL_SPECIAL_ROUTINES [C_DATE_TIME] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_DATE_TIME]

	yyvs51: SPECIAL [C_DURATION]
			-- Stack for semantic values of type C_DURATION

	yyvsc51: INTEGER
			-- Capacity of semantic value stack `yyvs51'

	yyvsp51: INTEGER
			-- Top of semantic value stack `yyvs51'

	yyspecial_routines51: detachable KL_SPECIAL_ROUTINES [C_DURATION] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_DURATION]

	yyvs52: SPECIAL [C_DATE]
			-- Stack for semantic values of type C_DATE

	yyvsc52: INTEGER
			-- Capacity of semantic value stack `yyvs52'

	yyvsp52: INTEGER
			-- Top of semantic value stack `yyvs52'

	yyspecial_routines52: detachable KL_SPECIAL_ROUTINES [C_DATE] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_DATE]

	yyvs53: SPECIAL [C_TIME]
			-- Stack for semantic values of type C_TIME

	yyvsc53: INTEGER
			-- Capacity of semantic value stack `yyvs53'

	yyvsp53: INTEGER
			-- Top of semantic value stack `yyvs53'

	yyspecial_routines53: detachable KL_SPECIAL_ROUTINES [C_TIME] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_TIME]

	yyvs54: SPECIAL [C_REAL]
			-- Stack for semantic values of type C_REAL

	yyvsc54: INTEGER
			-- Capacity of semantic value stack `yyvs54'

	yyvsp54: INTEGER
			-- Top of semantic value stack `yyvs54'

	yyspecial_routines54: detachable KL_SPECIAL_ROUTINES [C_REAL] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_REAL]

	yyvs55: SPECIAL [C_INTEGER]
			-- Stack for semantic values of type C_INTEGER

	yyvsc55: INTEGER
			-- Capacity of semantic value stack `yyvs55'

	yyvsp55: INTEGER
			-- Top of semantic value stack `yyvs55'

	yyspecial_routines55: detachable KL_SPECIAL_ROUTINES [C_INTEGER] note option: stable attribute end
			-- Routines that ought to be in SPECIAL [C_INTEGER]

feature {NONE} -- Constants

	yyFinal: INTEGER = 466
			-- Termination state id

	yyFlag: INTEGER = -32768
			-- Most negative INTEGER

	yyNtbase: INTEGER = 88
			-- Number of tokens

	yyLast: INTEGER = 682
			-- Upper bound of `yytable' and `yycheck'

	yyMax_token: INTEGER = 329
			-- Maximum token id
			-- (upper bound of `yytranslate'.)

	yyNsyms: INTEGER = 163
			-- Number of symbols
			-- (terminal and nonterminal)

feature -- User-defined features



feature -- Definitions

	Unbounded_value: INTEGER = -1

feature -- Initialization

	make
		do
			make_scanner
			make_parser_skeleton
			create object_nodes.make(0)
			create c_attrs.make(0)
			create time_vc
			create date_vc
		end

	reset
		do
			precursor
			validator_reset
			accept
		end

	execute (in_text:STRING; a_source_start_line: INTEGER; differential_flag: BOOLEAN; an_rm_schema: BMM_SCHEMA)
		do
			reset
			rm_schema := an_rm_schema
			source_start_line := a_source_start_line
			differential_syntax := differential_flag

			create indent.make_empty

			object_nodes.wipe_out
			c_attrs.wipe_out

			create time_vc
			create date_vc

			set_input_buffer (new_string_buffer (in_text))
			parse
		end

	error_loc: STRING
		do
			create Result.make_empty
			if attached {YY_FILE_BUFFER} input_buffer as f_buffer then
				Result.append (f_buffer.file.name + ", ")
			end
			Result.append ("line " + (in_lineno + source_start_line).out)
			Result.append(" [last token = " + token_name (last_token) + "]")
		end

feature -- Access

	differential_syntax: BOOLEAN
			-- True if the supplied text to parse is differential, in which case it can contain the
			-- differential syntax variants, i.e. ordering markers and specialisation paths

feature {NONE} -- Implementation

	rm_schema: detachable BMM_SCHEMA

	safe_put_c_attribute_child (an_attr: C_ATTRIBUTE; an_obj: C_OBJECT)
			-- check child object for validity and then put as new child
		require
			Not_already_added: not an_attr.has_child(an_obj)
		do
			debug("ADL_parse")
				io.put_string(indent + "ATTR_NODE " + an_attr.rm_attribute_name + " put_child(" +
						an_obj.generating_type + ": " + an_obj.rm_type_name + " [id=" + an_obj.node_id + "])%N")
			end
			-- attach the object if it is either in the RM or if it is a built-in domain type like C_CODE_PHRASE
			-- This still might fail later on, because the domain type needs to have a wrapper in the RM
			if rm_schema.has_class_definition (an_obj.rm_type_name) or attached {C_DOMAIN_TYPE} an_obj then
				if check_c_attribute_child(an_attr, an_obj) then
					c_attrs.item.put_child(an_obj)
				end
			else
				abort_with_error (ec_VCORM, <<an_obj.rm_type_name, c_attrs.item.path>>)
			end
		end

	check_c_attribute_child (an_attr: C_ATTRIBUTE; an_obj: C_OBJECT): BOOLEAN
			-- check a new child node
			-- FIXME: the semantics here should be rationalised with C_ATTRIBUTE.valid_child and related functions
		local
			err_code: STRING
			ar: ARRAYED_LIST[STRING]
		do
			create ar.make (0)
			ar.extend (an_obj.generating_type) -- $1
			if an_obj.is_addressable then
				ar.extend ("node_id=" + an_obj.node_id) -- $2
			else
				ar.extend ("rm_type_name=" + an_obj.rm_type_name) -- $2
			end
			ar.extend(an_attr.rm_attribute_name) -- $3

			if an_attr.is_single then
				if an_obj.occurrences /= Void and then (an_obj.occurrences.upper_unbounded or an_obj.occurrences.upper > 1) then
					err_code := "VACSO"
				elseif an_obj.is_addressable and an_attr.has_child_with_id (an_obj.node_id) then
					err_code := "VACSI"
				elseif not an_obj.is_addressable and an_attr.has_child_with_rm_type_name (an_obj.rm_type_name) then
					err_code := "VACSIT"
				else
					Result := True
				end
			elseif an_attr.is_multiple then
				if not an_obj.is_addressable then
					err_code := "VACMI"
				elseif an_attr.has_child_with_id (an_obj.node_id) then
					err_code := "VACMM"
				elseif (an_attr.cardinality /= Void and then not an_attr.cardinality.interval.upper_unbounded) and
						(an_obj.occurrences /= Void and then not an_obj.occurrences.upper_unbounded) and
						an_obj.occurrences.upper > an_attr.cardinality.interval.upper then
					err_code := "VACMCU"
					ar.extend (an_obj.occurrences.upper.out)
					ar.extend (an_attr.cardinality.interval.upper.out)
				else
					Result := True
				end
			end

			if not Result then
				abort_with_error (err_code, ar.to_array)
			end
		end

feature {NONE} -- Parse Tree

	object_nodes: ARRAYED_STACK [C_COMPLEX_OBJECT]
	complex_obj: C_COMPLEX_OBJECT

	c_attrs: ARRAYED_STACK [C_ATTRIBUTE]
			-- main stack of attributes during construction
		attribute
			create Result.make (0)
		end

	c_diff_attrs: ARRAYED_LIST [C_ATTRIBUTE]
			-- reference list of attributes with differential paths that require a special grafting process
		attribute
			create Result.make (0)
		end

	attr_node: detachable C_ATTRIBUTE

	rm_attribute_name: detachable STRING
	parent_path_str: detachable STRING

	invariant_expr: detachable STRING

	time_vc: TIME_VALIDITY_CHECKER
	date_vc: DATE_VALIDITY_CHECKER

	bmm_prop_def: detachable BMM_PROPERTY_DEFINITION

-------------- FOLLOWING TAKEN FROM DADL_VALIDATOR.Y ---------------
feature {NONE} -- Implementation

	arch_internal_ref_rm_type_name: detachable STRING
	arch_internal_ref_node_id: detachable STRING

	indent: STRING
		attribute
			create Result.make_empty
		end

	str: detachable STRING

	og_path: detachable OG_PATH

end
