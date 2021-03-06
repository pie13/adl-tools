note
	component:   "openEHR ADL Tools"
	description: "Persistent form of ARCHETYPE_ONTOLOGY class"
	keywords:    "archetype, ontology, terminology"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2011- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class P_ARCHETYPE_ONTOLOGY

create
	make

feature -- Initialisation

	make (an_ontology: ARCHETYPE_ONTOLOGY)
		local
			tb_p_ont: HASH_TABLE [STRING, STRING]
			cb_p_ont: HASH_TABLE [STRING, STRING]
		do
			term_definitions := an_ontology.term_definitions
			constraint_definitions := an_ontology.constraint_definitions

			if attached an_ontology.term_bindings then
				create term_bindings.make (0)
				across an_ontology.term_bindings as terminologies_csr loop
					create tb_p_ont.make (0)
					term_bindings.put (tb_p_ont, terminologies_csr.key)
					across terminologies_csr.item as term_bindings_csr loop
						tb_p_ont.put (term_bindings_csr.item.as_string, term_bindings_csr.key)
					end
				end
			end

			if attached an_ontology.constraint_bindings then
				create constraint_bindings.make (0)
				across an_ontology.constraint_bindings as terminologies_csr loop
					create cb_p_ont.make (0)
					constraint_bindings.put (cb_p_ont, terminologies_csr.key)
					across terminologies_csr.item as constraint_bindings_csr loop
						cb_p_ont.put (constraint_bindings_csr.item.as_string, constraint_bindings_csr.key)
					end
				end
			end

			terminology_extracts := an_ontology.terminology_extracts
		end

feature -- Access

	term_definitions: HASH_TABLE [HASH_TABLE [ARCHETYPE_TERM, STRING], STRING]
			-- table of term definitions, keyed by code, keyed by language
		attribute
			create Result.make (0)
		end

	constraint_definitions: HASH_TABLE [HASH_TABLE [ARCHETYPE_TERM, STRING], STRING]
			-- table of constraint definitions, keyed by code, keyed by language
		attribute
			create Result.make (0)
		end

	term_bindings: HASH_TABLE [HASH_TABLE [STRING, STRING], STRING]
			-- tables of bindings of external terms to internal codes, keyed by external terminology id
		attribute
			create Result.make (0)
		end

	constraint_bindings: HASH_TABLE [HASH_TABLE [STRING, STRING], STRING]
			-- table of constraint bindings in the form of strings "service::query", keyed by terminology
		attribute
			create Result.make (0)
		end

	terminology_extracts: detachable HASH_TABLE [HASH_TABLE [ARCHETYPE_TERM, STRING], STRING]
			-- table of {code, description} keyed by terminology_id containing extracted concepts from external terminologies


feature -- Factory

	populate_ontology (an_ont: ARCHETYPE_ONTOLOGY)
			-- populate fields not already populated from creation of a C_XXX instance
		local
			tb_ont: HASH_TABLE [HASH_TABLE [TERMINOLOGY_CODE, STRING], STRING]
			cb_ont: HASH_TABLE [HASH_TABLE [URI, STRING], STRING]
			tb_ont_code_table: HASH_TABLE [TERMINOLOGY_CODE, STRING]
			cb_ont_code_table: HASH_TABLE [URI, STRING]
			tb_p_ont: HASH_TABLE [STRING, STRING]
			cb_p_ont: HASH_TABLE [STRING, STRING]
		do
			an_ont.set_term_definitions (term_definitions)
			an_ont.set_constraint_definitions (constraint_definitions)

			create tb_ont.make (0)
			across term_bindings as term_bindings_csr loop
				tb_p_ont := term_bindings_csr.item
				create tb_ont_code_table.make (0)
				tb_ont.put (tb_ont_code_table, term_bindings_csr.key)
				across tb_p_ont as p_term_bindings_csr loop
					tb_ont_code_table.put (create {CODE_PHRASE}.make_from_string (p_term_bindings_csr.item), p_term_bindings_csr.key)
				end
			end
			an_ont.set_term_bindings (tb_ont)

			create cb_ont.make (0)
			across constraint_bindings as constraint_bindings_csr loop
				cb_p_ont := constraint_bindings_csr.item
				create cb_ont_code_table.make (0)
				cb_ont.put (cb_ont_code_table, constraint_bindings_csr.key)
				across cb_p_ont as p_constraint_bindings_csr loop
					cb_ont_code_table.put (create {URI}.make_from_string (p_constraint_bindings_csr.item), p_constraint_bindings_csr.key)
				end
			end
			an_ont.set_constraint_bindings (cb_ont)
		end

end


