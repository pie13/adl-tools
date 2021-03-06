note
	component:   "openEHR ADL Tools"
	description: "Test case for archetype definition modification"
	keywords:    "test, ADL, CADL"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2003, 2003 Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"


class TC_ARCHETYPE_ADD_NODES

inherit
	TEST_CASE
		export
			{NONE} all
		redefine
			prereqs
		end

	SHARED_TEST_ENV
		export
			{NONE} all
		end

	OPERATOR_TYPES
		export
			{NONE} all
		end

create
	make

feature -- Initialisation

	make(arg:ANY)
	    do
	    end

feature -- Access

	title: STRING = "Test Archetype Add definition nodes"

	prereqs: ARRAY[STRING]
			-- ids of prerequisite test cases
		once
			Result := <<"TC_ARCHETYPE_CREATE">>
		end

feature -- testing

	execute
		local
			a_code: STRING
			a_term: ARCHETYPE_TERM
			archetype: ARCHETYPE
			cf: C_FACTORY
			an_attr_node, top_items_node: C_ATTRIBUTE
			an_obj_node, obj_node2, neonate_section_node, mother_section_node: C_COMPLEX_OBJECT
			a_simple_node: C_PRIMITIVE_OBJECT
			a_term_node: C_CODE_PHRASE
			an_assertion: ASSERTION
			id_expr_leaf, id_pattern_expr_leaf: EXPR_LEAF
			match_op: EXPR_BINARY_OPERATOR
			an_arch_slot: ARCHETYPE_SLOT
		do
			archetype := archetype_compiler.archetype
			cf := archetype_compiler.constraint_model_factory

			-- add name node
			an_attr_node := cf.create_c_attribute_single (archetype.definition, "name")
			an_obj_node := cf.create_c_complex_object_anonymous (an_attr_node, "CODED_TEXT")
			an_attr_node := cf.create_c_attribute_single (an_obj_node, "code")
			a_term_node := cf.create_c_code_phrase_from_pattern (an_attr_node, "local::at0000")

			-- add items node
			top_items_node := cf.create_c_attribute_multiple (archetype.definition, "items", cf.create_cardinality_make_upper_unbounded (0))

			-- add neonate term
			a_code := ontology.new_non_specialised_term_code
			create a_term.make(a_code)
			a_term.add_item("text", "neonate")
			a_term.add_item("description", "newborn child")
			ontology.add_term_definition("en", a_term)

			-- add neonate subsection
			neonate_section_node := cf.create_c_complex_object_identified (top_items_node, "SECTION", a_code)
			an_attr_node := cf.create_c_attribute_single (neonate_section_node, "name")
			obj_node2 := cf.create_c_complex_object_anonymous (an_attr_node, "CODED_TEXT")
			an_attr_node := cf.create_c_attribute_single (obj_node2, "code")
			a_term_node := cf.create_c_code_phrase_from_pattern (an_attr_node, "local::" + a_code)

			an_attr_node := cf.create_c_attribute_multiple (neonate_section_node, "items", cf.create_cardinality_make_upper_unbounded (0))
			an_arch_slot := cf.create_archetype_slot_anonymous (an_attr_node, "OBSERVATION")
			an_arch_slot.set_occurrences(cf.create_integer_interval_make_upper_unbounded (0, True))

			-- make assertions for slot
			id_expr_leaf := cf.create_expr_leaf_archetype_ref ("id")
			id_pattern_expr_leaf := cf.create_expr_leaf_constraint (create {C_STRING}.make_from_regexp("openehr-ehr-observation\..*\..*", True))
			match_op := cf.create_expr_binary_operator_node (create {OPERATOR_KIND}.make(op_matches), id_expr_leaf, id_pattern_expr_leaf)
			an_assertion := cf.create_assertion (match_op, Void)
			an_arch_slot.add_include(an_assertion)

			-- add mother term
			a_code := ontology.new_non_specialised_term_code
			create a_term.make(a_code)
			a_term.add_item("text", "mother")
			a_term.add_item("description", "mother of newborn child")
			ontology.add_term_definition("en", a_term)

			-- add mother subsection
			mother_section_node := cf.create_c_complex_object_identified (top_items_node, "SECTION", a_code)
			an_attr_node := cf.create_c_attribute_single (mother_section_node, "name")
			obj_node2 := cf.create_c_complex_object_anonymous (an_attr_node, "CODED_TEXT")
			an_attr_node := cf.create_c_attribute_single (obj_node2, "code")
			a_term_node := cf.create_c_code_phrase_from_pattern (an_attr_node, "local::" + a_code)

			an_attr_node := cf.create_c_attribute_multiple (mother_section_node, "items", cf.create_cardinality_make_upper_unbounded (0))
			an_arch_slot := cf.create_archetype_slot_anonymous (an_attr_node, "OBSERVATION")
			an_arch_slot.set_occurrences(cf.create_integer_interval_make_upper_unbounded (0, True))

			-- add assertions for slot
			id_expr_leaf := cf.create_expr_leaf_archetype_ref ("id")
			id_pattern_expr_leaf := cf.create_expr_leaf_constraint (create {C_STRING}.make_from_regexp("openehr-ehr-observation\..*\..*", True))
			match_op := cf.create_expr_binary_operator_node (create {OPERATOR_KIND}.make(op_matches), id_expr_leaf, id_pattern_expr_leaf)
			an_assertion := cf.create_assertion (match_op, Void)
			an_arch_slot.add_include(an_assertion)

			if archetype.is_valid then
				archetype_compiler.serialise_archetype (serialise_format)
				io.put_string(archetype_compiler.serialised_archetype)
			else
				-- FIXME: This did not compile because of revision 319. What should it do?
				io.put_string (archetype.errors)
			end
		end

end

