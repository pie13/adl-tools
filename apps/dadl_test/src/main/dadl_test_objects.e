note
	component:   "openEHR dADL Project"
	description: "Data objects for dADL testing"
	keywords:    "ADL"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.com>"
	copyright:   "Copyright (c) 2010 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL"
	revision:    "$LastChangedRevision"

class
	DADL_TEST_OBJECTS

inherit
	SHARED_APP_ROOT
		export
			{NONE} all
		end

	SHARED_APP_RESOURCES
		undefine
			copy, default_create
		end

feature -- Initialisation

	initialise (a_status_reporting_proc, a_source_text_proc: PROCEDURE [ANY, TUPLE [STRING]])
			-- initialise with a status reporting function; if none supplied,
			-- write to std out
		do
			status_reporting_proc := a_status_reporting_proc
			source_text_proc := a_source_text_proc
		end

feature -- Access

	object_table: HASH_TABLE [ANY, STRING]
			-- table of test objects keyed by their type
		once
			create Result.make(0)
			Result.put (dadl_primitive_types, dadl_primitive_types.generator)
			Result.put (dadl_primitive_interval_types, dadl_primitive_interval_types.generator)
			Result.put (dadl_primitive_sequence_types, dadl_primitive_sequence_types.generator)
		end

	dadl_primitive_types: DADL_PRIMITIVE_TYPES
		do
			create Result
			Result.set_my_character ('T')
			Result.set_my_character_8 ('V')
--			Result.set_my_character_32 ('X')
			Result.set_my_integer (1)
			Result.set_my_integer_8 (100)
			Result.set_my_integer_16 (32000)
			Result.set_my_integer_32 (1000000)
			Result.set_my_integer_64 (500000000)
			Result.set_my_natural (1)
			Result.set_my_natural_8 (200)
			Result.set_my_natural_16 (32000)
			Result.set_my_natural_32 (1000000)
			Result.set_my_natural_64 (500000000)
			Result.set_my_real (3.1415)
			Result.set_my_real_32 (2.1878)
			Result.set_my_real_64 (3.1415926)
			Result.set_my_string ("This is the last dance")
			Result.set_my_string_8 ("Birds and bees")
--			Result.set_my_string_32 ("And honey trees")
			Result.set_my_date (create {DATE}.make_now)
			Result.set_my_date_time (create {DATE_TIME}.make_now)
			Result.set_my_time (create {TIME}.make_now)
			Result.set_my_duration (create {DATE_TIME_DURATION}.make_definite (1, 0, 0, 0))
			Result.set_my_iso8601_date (create {ISO8601_DATE}.make_from_string("2001-08-12"))
			Result.set_my_iso8601_date_time (create {ISO8601_DATE_TIME}.make_from_string("2001-08-12T03:46:00"))
			Result.set_my_iso8601_time (create {ISO8601_TIME}.make_from_string("03:46:00"))
			Result.set_my_iso8601_duration (create {ISO8601_DURATION}.make_from_string("P1Y2D"))
		end

	dadl_primitive_interval_types: DADL_PRIMITIVE_INTERVAL_TYPES
		once
			create Result
			Result.set_my_integer_interval (create {INTERVAL[INTEGER]}.make_bounded_included(40, 3000))
			Result.set_my_integer_8_interval (create {INTERVAL[INTEGER_8]}.make_bounded_included(10, 20))
			Result.set_my_integer_16_interval (create {INTERVAL[INTEGER_16]}.make_bounded_included(-10, 20))
			Result.set_my_integer_32_interval (create {INTERVAL[INTEGER_32]}.make_bounded_included(-300, 50000))
			Result.set_my_integer_64_interval (create {INTERVAL[INTEGER_64]}.make_bounded_included(1000, 20000000))

			Result.set_my_natural_interval (create {INTERVAL[NATURAL]}.make_bounded_included(40, 3000))
			Result.set_my_natural_8_interval (create {INTERVAL[NATURAL_8]}.make_bounded_included(10, 20))
			Result.set_my_natural_16_interval (create {INTERVAL[NATURAL_16]}.make_bounded_included(10, 20))
			Result.set_my_natural_32_interval (create {INTERVAL[NATURAL_32]}.make_bounded_included(300, 50000))
			Result.set_my_natural_64_interval (create {INTERVAL[NATURAL_64]}.make_bounded_included(1000, 20000000))

			Result.set_my_real_interval (create {INTERVAL[REAL]}.make_bounded_included(40.0, 3000.0))
			Result.set_my_real_32_interval (create {INTERVAL[REAL_32]}.make_bounded_included(10.1, 20.234))
			Result.set_my_real_64_interval (create {INTERVAL[REAL_64]}.make_bounded_included(10.0, 20.0))
			Result.set_my_double_interval (create {INTERVAL[DOUBLE]}.make_bounded_included(300.0, 50000.0))
		end

	dadl_primitive_sequence_types: DADL_PRIMITIVE_SEQUENCE_TYPES
		once
			create Result
			Result.set_my_integer_arrayed_list (create {ARRAYED_LIST[INTEGER]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_integer_8_arrayed_list (create {ARRAYED_LIST[INTEGER_8]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_integer_16_arrayed_list (create {ARRAYED_LIST[INTEGER_16]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_integer_32_arrayed_list (create {ARRAYED_LIST[INTEGER_32]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_integer_64_arrayed_list (create {ARRAYED_LIST[INTEGER_64]}.make_from_array(<<1, 2, 3, 4>>))

			Result.set_my_natural_arrayed_list (create {ARRAYED_LIST[NATURAL]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_natural_8_arrayed_list (create {ARRAYED_LIST[NATURAL_8]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_natural_16_arrayed_list (create {ARRAYED_LIST[NATURAL_16]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_natural_32_arrayed_list (create {ARRAYED_LIST[NATURAL_32]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_natural_64_arrayed_list (create {ARRAYED_LIST[NATURAL_64]}.make_from_array(<<1, 2, 3, 4>>))

			Result.set_my_real_arrayed_list (create {ARRAYED_LIST[REAL]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_real_32_arrayed_list (create {ARRAYED_LIST[REAL_32]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_real_64_arrayed_list (create {ARRAYED_LIST[REAL_64]}.make_from_array(<<1, 2, 3, 4>>))
			Result.set_my_double_arrayed_list (create {ARRAYED_LIST[DOUBLE]}.make_from_array(<<1, 2, 3, 4>>))

			Result.set_my_boolean_arrayed_list (create {ARRAYED_LIST[BOOLEAN]}.make_from_array(<<True, False, True>>))

			Result.set_my_character_arrayed_list (create {ARRAYED_LIST[CHARACTER]}.make_from_array(<<'a', 'b', 'c', 'd'>>))
			Result.set_my_character_8_arrayed_list (create {ARRAYED_LIST[CHARACTER_8]}.make_from_array(<<'e', 'f', 'g', 'h'>>))
	--		Result.set_my_character_32_arrayed_list (create {ARRAYED_LIST[CHARACTER_32]}.make_from_array(<<#, #, #, #>>))

			Result.set_my_string_arrayed_list (create {ARRAYED_LIST[STRING]}.make_from_array(<<"this", "is", "a", "string", "list">>))
	--		Result.set_my_string_32_arrayed_list (create {ARRAYED_LIST[STRING_32]}.make_from_array(<<#, #, #, #>>))

			Result.set_my_date_arrayed_list (create {ARRAYED_LIST[DATE]}.make_from_array(<<create {DATE}.make_now, create {DATE}.make_day_month_year(12, 8, 1965)>>))
			Result.set_my_date_time_arrayed_list (create {ARRAYED_LIST[DATE_TIME]}.make_from_array(<<create {DATE_TIME}.make_now, create {DATE_TIME}.make(1965, 8, 12, 14, 8, 0)>>))
			Result.set_my_time_arrayed_list (create {ARRAYED_LIST[TIME]}.make_from_array(<<create {TIME}.make_now, create {TIME}.make(2, 30, 0)>>))
			Result.set_my_duration_arrayed_list (create {ARRAYED_LIST[DATE_TIME_DURATION]}.make_from_array(<<create {DATE_TIME_DURATION}.make(32, 0, 0, 5, 0, 0)>>))

			Result.set_my_iso8601_date_arrayed_list (create {ARRAYED_LIST[ISO8601_DATE]}.make_from_array(<<create {ISO8601_DATE}.make_from_string("2001-01-02"), create {ISO8601_DATE}.make_from_string("2007-07-22")>>))
			Result.set_my_iso8601_date_time_arrayed_list (create {ARRAYED_LIST[ISO8601_DATE_TIME]}.make_from_array(<<create {ISO8601_DATE_TIME}.make_from_string("2001-01-02T00:47:00"), create {ISO8601_DATE_TIME}.make_from_string("2001-01-02T03:45:00")>>))
			Result.set_my_iso8601_time_arrayed_list (create {ARRAYED_LIST[ISO8601_TIME]}.make_from_array(<<create {ISO8601_TIME}.make_from_string("11:15:02"), create {ISO8601_TIME}.make_from_string("01:47:30")>>))
			Result.set_my_iso8601_duration_arrayed_list (create {ARRAYED_LIST[ISO8601_DURATION]}.make_from_array(<<create {ISO8601_DURATION}.make_from_string("P1Y2D")>>))
		end

feature -- Status setting

feature -- Commands

	round_trip (an_obj: ANY)
		local
			new_obj: ANY
			dt: DT_COMPLEX_OBJECT_NODE
		do
			append_status("%NCreate Data Tree from " + an_obj.generator + " object%N")
			create dt.make_from_object (an_obj)

			append_status("Serialise Data Tree to dADL%N")
			dadl_engine.set_tree (dt)
			dadl_engine.serialise ("dadl")
			set_source_text (dadl_engine.serialised)

			append_status("Parse dADL%N")
			dadl_engine.set_source (dadl_engine.serialised, 1)
			dadl_engine.parse
			if dadl_engine.parse_succeeded then
				-- display tree in node explorer
				new_obj ?= dadl_engine.tree.as_object_from_string (an_obj.generator)
				if attached new_obj then
					append_status("%Tsuccessfully created " + new_obj.generator + " object from round trip%N")
				else
					append_status("%Tsuccessfully created " + new_obj.generator + " object from round trip; Error%N")
					append_status(billboard.content)
					billboard.clear
				end
			else
				append_status (dadl_engine.parse_error_text)
			end
		end

feature {NONE} -- Implementation

	dadl_engine: DADL_ENGINE
		once
			create Result.make
		end

	status_reporting_proc: PROCEDURE [ANY, TUPLE [STRING]]

	append_status (a_text: attached STRING)
			-- write a_text to reporting location, or else stdout if none
		do
			if status_reporting_proc /= Void then
				status_reporting_proc.call([a_text])
			else
				io.put_string (a_text)
			end
		end

	source_text_proc: PROCEDURE [ANY, TUPLE [STRING]]

	set_source_text (a_text: attached STRING)
			-- write a_text to source text location, or else stdout if none
		do
			if source_text_proc /= Void then
				source_text_proc.call([a_text])
			else
				io.put_string (a_text)
			end
		end

end
