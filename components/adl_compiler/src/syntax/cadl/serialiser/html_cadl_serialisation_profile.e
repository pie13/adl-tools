note
	component:   "openEHR ADL Tools"
	description: "Common routines for HTML ADL serialisation"
	keywords:    "test, ADL"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2003 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"


class HTML_CADL_SERIALISATION_PROFILE

inherit
	HTML_SERIALISATION_PROFILE

	CADL_TOKENS
		export
			{NONE} all
		end

create
	make

feature {NONE} -- Implementation

	symbols: HASH_TABLE[STRING, INTEGER]
			-- keywords in this format, keyed by logical name
		once
			create Result.make(0)
			Result.put("&isin;",			SYM_MATCHES)
			Result.put("occurrences",		SYM_OCCURRENCES)
			Result.put("existence",			SYM_EXISTENCE)
			Result.put("cardinality",		SYM_CARDINALITY)
			Result.put("use_node",			SYM_USE_NODE)
			Result.put("allow_archetype",		SYM_ALLOW_ARCHETYPE)
			Result.put("use_archetype",		SYM_USE_ARCHETYPE)

			Result.put("include",			SYM_INCLUDE)
			Result.put("exclude",			SYM_EXCLUDE)

			Result.put("before",			SYM_BEFORE)
			Result.put("after",			SYM_AFTER)

			Result.put("{",				SYM_START_CBLOCK)
			Result.put("}",				SYM_END_CBLOCK)
			Result.put("*",				SYM_ANY)
		end

end


