note
	component:   "openEHR ADL Tools"
	description: "[
				 Archetype compiler interface. This object knows how to compile a system of archetypes
				 found in the ARCHETYPE_CATALOG.
				 ]"
	keywords:    "compiler, archetype, ADL"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "openEHR AWB project <http://www.openehr.org/issues/browse/AWB>"
	copyright:   "Copyright (c) 2010- Ocean Informatics Pty Ltd"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ARCHETYPE_COMPILER

inherit
	SHARED_ARCHETYPE_CATALOGUES
		export
			{NONE} all;
			{ANY} deep_copy, deep_twin, is_deep_equal, standard_is_equal
		end

	SHARED_ADL_APP_RESOURCES
		export
			{NONE} all
		undefine
			is_equal
		end

	SHARED_ARCHETYPE_SERIALISERS
		export
			{NONE} all
		undefine
			is_equal
		end

	COMPILATION_STATES
		export
			{NONE} all
		end

	EXCEPTIONS
		export
			{NONE} all
		end

create
	make

feature {NONE} -- Initialisation

	make
		do
		end

feature -- Access

	full_compile_visual_update_action: detachable PROCEDURE [ANY, TUPLE]
			-- Called after complete build

	global_visual_update_action: detachable PROCEDURE [ANY, TUPLE[STRING]]
			-- Called after global processing to perform GUI updates

	archetype_visual_update_action: detachable PROCEDURE [ANY, TUPLE [STRING, ARCH_CAT_ARCHETYPE, INTEGER]]
			-- Called after processing each archetype (to perform GUI updates during processing).

feature -- Status

	is_full_build_completed: BOOLEAN
			-- True if last attempt to build the whole system succeeded

	is_building: BOOLEAN
			-- is building underway?

	is_interrupt_requested: BOOLEAN
			-- Should building be cancelled immediately?

feature -- Status Setting

	signal_interrupt
			-- Cancel building immediately.
		do
			is_interrupt_requested := True
			call_global_visual_update_action ("************* interrupted *************%N")
		ensure
			interrupted: is_interrupt_requested
		end

feature -- Modification

	set_full_compile_visual_update_action (a_routine: PROCEDURE [ANY, TUPLE])
			-- Set `full_compile_visual_update_action'.
		do
			full_compile_visual_update_action := a_routine
		ensure
			full_compile_visual_update_action_set: full_compile_visual_update_action = a_routine
		end

	set_global_visual_update_action (a_routine: PROCEDURE [ANY, TUPLE[STRING]])
			-- Set `global_visual_update_action'.
		do
			global_visual_update_action := a_routine
		ensure
			global_visual_update_action_set: global_visual_update_action = a_routine
		end

	set_archetype_visual_update_action (a_routine: PROCEDURE [ANY, TUPLE [STRING, ARCH_CAT_ARCHETYPE, INTEGER]])
			-- Set `archetype_visual_update_action'.
		do
			archetype_visual_update_action := a_routine
		ensure
			archetype_visual_update_action_set: archetype_visual_update_action = a_routine
		end

feature -- Commands

	build_all
			-- Build the whole system, but not artefacts that seem to be built already.
		do
			is_full_build_completed := False
			is_building := True
			call_global_visual_update_action (get_msg_line ("compiler_building_system", Void))
			do_all (agent check_file_system_currency (False, ?))
			do_all (agent build_archetype (?, 0))
			is_full_build_completed := not is_interrupt_requested
			is_building := False
			call_global_visual_update_action (get_msg_line ("compiler_finished_building_system", Void))
			if is_full_build_completed then
				call_full_compile_visual_update_action
			end
		end

	rebuild_all
			-- Rebuild the whole system from scratch, regardless of previous attempts.
		do
			is_full_build_completed := False
			is_building := True
			call_global_visual_update_action(get_msg_line ("compiler_rebuilding_system", Void))
			do_all (agent check_file_system_currency (True, ?))
			do_all (agent build_archetype (?, 0))
			is_full_build_completed := not is_interrupt_requested
			is_building := False
			call_global_visual_update_action (get_msg_line ("compiler_finished_rebuilding_system", Void))
			if is_full_build_completed then
				call_full_compile_visual_update_action
			end
		end

	build_subtree (aci: ARCH_CAT_ITEM)
			-- Build the sub-system at and below `aci', but not artefacts that seem to be built already.
		do
			is_building := True
			call_global_visual_update_action (get_msg_line ("compiler_building_subtree", Void))
			do_subtree (aci, agent check_file_system_currency (False, ?))
			do_subtree (aci, agent build_archetype (?, 0))
			is_building := False
			call_global_visual_update_action (get_msg_line ("compiler_finished_building_subtree", Void))
		end

	rebuild_subtree (aci: ARCH_CAT_ITEM)
			-- Rebuild the sub-system at and below `aci' from scratch, regardless of previous attempts.
		do
			is_building := True
			call_global_visual_update_action (get_msg_line ("compiler_rebuilding_subtree", Void))
			do_subtree (aci, agent check_file_system_currency (True, ?))
			do_subtree (aci, agent build_archetype (?, 0))
			call_global_visual_update_action (get_msg_line ("compiler_finished_rebuilding_subtree", Void))
			is_building := False
		end

	build_lineage (ara: ARCH_CAT_ARCHETYPE; dependency_depth: INTEGER)
			-- Build the archetypes in the lineage containing `ara', except those that seem to be built already.
			-- Go down as far as `ara'. Don't build sibling branches since this would create errors in unrelated archetypes.
			-- dependency depth indicates how many dependency relationships away from original artefact
		do
			is_building := True
			do_lineage (ara, agent check_file_system_currency (False, ?))
			do_lineage (ara, agent build_archetype (?, dependency_depth))
			is_building := False
		end

	rebuild_lineage (ara: ARCH_CAT_ARCHETYPE; dependency_depth: INTEGER)
			-- Rebuild the archetypes in the lineage containing `ara'.
			-- Go down as far as `ara'. Don't build sibling branches since this would create errors in unrelated archetypes.
		do
			is_building := True
			do_lineage (ara, agent check_file_system_currency (True, ?))
			do_lineage (ara, agent build_archetype (?, dependency_depth))
			is_building := False
		end

	export_all (an_export_dir, a_syntax: STRING)
			-- Generate `a_syntax' serialisation of archetypes under `an_export_dir' from all archetypes that have already been built.
		do
			call_global_visual_update_action (get_msg_line ("compiler_export", <<a_syntax>>))
			do_all (agent export_archetype (an_export_dir, a_syntax, False, ?))
			call_global_visual_update_action (get_msg_line ("compiler_finished_export", <<a_syntax, an_export_dir>>))
		end

	build_and_export_all (an_export_dir, a_syntax: STRING)
			-- Generate `a_syntax' serialisation of archetypes under `an_export_dir' from the whole system, building each archetype as necessary.
		do
			is_full_build_completed := False
			is_building := True
			call_global_visual_update_action (get_msg_line ("compiler_build_and_export", <<a_syntax>>))
			do_all (agent export_archetype (an_export_dir, a_syntax, True, ?))
			is_full_build_completed := not is_interrupt_requested
			is_building := False
			call_global_visual_update_action (get_msg_line ("compiler_finished_build_and_export", <<a_syntax, an_export_dir>>))
		end

feature {NONE} -- Implementation

	do_all (action: PROCEDURE [ANY, TUPLE [ARCH_CAT_ARCHETYPE]])
			-- Perform `action' on the sub-system at and below `subtree'.
		do
			is_interrupt_requested := False
			current_arch_cat.do_all_archetypes (action)
		end

	do_subtree (subtree: ARCH_CAT_ITEM; action: PROCEDURE [ANY, TUPLE [ARCH_CAT_ARCHETYPE]])
			-- Perform `action' on the sub-system at and below `subtree'.
		do
			is_interrupt_requested := False
			current_arch_cat.do_archetypes (subtree, action)
		end

	do_lineage (ara: ARCH_CAT_ARCHETYPE; action: PROCEDURE [ANY, TUPLE [ARCH_CAT_ARCHETYPE]])
			-- Build the archetypes in the lineage containing `ara', possibly from scratch.
			-- Go down as far as `ara'. Don't build sibling branches since this would create errors in unrelated archetypes.
		do
			is_interrupt_requested := False
			current_arch_cat.do_archetype_lineage(ara, action)
		end

	check_file_system_currency (from_scratch: BOOLEAN; ara: ARCH_CAT_ARCHETYPE)
			-- check archetype for anything that would require recompilation:
			-- * editing changes, including anything that might cause reparenting
			-- * user request to start from scratch
		do
			if not is_interrupt_requested then
				if ara.compile_attempted then
					if ara.is_source_modified then
						ara.signal_source_edited
						if ara.ontology_location_changed then
							current_arch_cat.update_archetype_id(ara)
							-- FIXME - the directory data structure on which we are now traversing has changed;
							-- could cause problems...
						end
					elseif from_scratch then
						ara.signal_from_scratch
					end
				end
			end
		end

	build_archetype (ara: ARCH_CAT_ARCHETYPE; dependency_depth: INTEGER)
			-- Build `ara' only if `from_scratch' is true, or if it is has changed since it was last validly built.
		local
			exception_encountered: BOOLEAN
			build_status, exc_trace_str: STRING
		do
			if not is_interrupt_requested then
				if not exception_encountered then
					ara.check_compilation_currency
					if not ara.is_in_terminal_compilation_state then
						build_status := get_msg_line ("compiler_compiling_archetype", <<ara.artefact_type_name.as_upper, ara.id.value>>)
						call_archetype_visual_update_action (build_status, ara, dependency_depth)

						-- first phase
						ara.compile

						-- second phase - needed if there are suppliers (i.e. slot-fillers or plain
						-- external references) to compile first
						if ara.compilation_state = Cs_suppliers_known then
							across ara.suppliers_index as suppliers_csr loop
								build_lineage (suppliers_csr.item, dependency_depth+1)
							end

							-- continue compilation - remaining steps after suppliers compilation
							ara.signal_suppliers_compiled
							ara.compile
						end
						build_status := ara.errors.as_string

					elseif ara.is_valid then
						if not ara.errors.is_empty then
							build_status := get_msg_line ("compiler_already_attempted_validated_with_warnings", <<ara.artefact_type_name.as_upper, ara.id.value, ara.error_strings>>)
						else
							build_status := get_msg_line ("compiler_already_attempted_validated", <<ara.artefact_type_name.as_upper, ara.id.value>>)
						end
					else
						build_status := get_msg_line ("compiler_already_attempted_failed", <<ara.artefact_type_name.as_upper, ara.id.value, ara.error_strings>>)
					end
					call_archetype_visual_update_action (build_status, ara, dependency_depth)
				else
					ara.signal_exception
					call_archetype_visual_update_action (ara.error_strings, ara, dependency_depth)
				end
			end
		rescue
			if attached exception_trace as et then
				exc_trace_str := et
			else
				create exc_trace_str.make_from_string ("(Exception trace not available)")
			end
			call_global_visual_update_action (get_msg (ec_compile_exception, <<ara.qualified_name, exception.out, exc_trace_str>>))
			exception_encountered := True
			retry
		end

	export_archetype (an_export_dir, a_syntax: STRING; build_too: BOOLEAN; ara: ARCH_CAT_ARCHETYPE)
			-- Generate serialised output under `an_export_dir' from `ara', optionally building it first if necessary.
		require
			has_serialiser_format (a_syntax)
		local
			filename: STRING
		do
			if not is_interrupt_requested then
				if build_too then
					build_archetype (ara, 0)
				end

				if ara.is_valid then
					check attached file_system.pathname (an_export_dir, ara.id.as_string) as pn and then attached archetype_file_extensions.item (a_syntax) as ext then
						filename := pn + ext
					end
					ara.save_flat_as (filename, a_syntax)
					call_archetype_visual_update_action (ara.status, ara, 0)
				end
			end
		end

	call_full_compile_visual_update_action
			-- Call `full_compile_visual_update_action', if it is attached.
		do
			if attached full_compile_visual_update_action as ua then
				ua.call ([])
			end
		end

	call_global_visual_update_action (a_msg: STRING)
			-- Call `global_visual_update_action', if it is attached.
		do
			if attached global_visual_update_action as ua then
				ua.call ([a_msg])
			end
		end

	call_archetype_visual_update_action (a_msg: STRING; ara: ARCH_CAT_ARCHETYPE; dependency_depth: INTEGER)
			-- Call `archetype_visual_update_action', if it is attached.
		do
			if attached archetype_visual_update_action as ua then
				ua.call ([a_msg, ara, dependency_depth])
			end
		end

end



