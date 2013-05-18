note
	component:   "openEHR Reusable Libraries"
	description: "Test case for procedure call"
	keywords:    "test, method dispatcher"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2004 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"


class TC_MD_PROC_CALL_3

inherit
	SHARED_TEST_ENV
	TEST_CASE
		redefine
			check_result
		end
		
create
	make

feature -- Initialisation
	make(arg:ANY)
		do
		end

feature -- Access

	title:STRING = "Procedure call (non-existent) using PART/SUB_PART"

feature -- testing

	execute
		local
			feature_name:STRING
		do
			feature_name := "non_existent"

			io.put_string("Checking " + part.generating_type + "." + feature_name + " is valid Procedure: " +
				method_dispatcher.is_valid_feature(part.generating_type, feature_name).out + "%N")
		end

	check_result
		do
		end

end
