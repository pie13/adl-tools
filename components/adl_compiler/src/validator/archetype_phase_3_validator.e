note
	component:   "openEHR Archetype Project"
	description: "Phase 3 validation: validating performed on flattened archetype."
	keywords:    "constraint model"
	author:      "Thomas Beale <thomas.beale@OceanInformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2007- Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

class ARCHETYPE_PHASE_3_VALIDATOR

inherit
	ARCHETYPE_VALIDATOR
		redefine
			validate, target, initialise
		end

create
	initialise

feature {ADL15_ENGINE} -- Initialisation

	initialise (a_target_desc: like target_descriptor; an_rm_schema: BMM_SCHEMA)
			-- set target_descriptor
			-- initialise reporting variables
		do
			rm_schema := an_rm_schema
			target_descriptor := a_target_desc
			initialise_authored_resource (target_descriptor.flat_archetype)
		end

feature -- Access

	target: FLAT_ARCHETYPE
			-- flat archetype being validated

feature -- Status Report

	is_validation_candidate (ara: ARCH_CAT_ARCHETYPE): BOOLEAN
		do
			Result := attached ara.flat_archetype
		end

feature -- Validation

	validate
		do
			reset
			validate_occurrences
		end

feature {NONE} -- Implementation

	validate_occurrences
			-- validate occurrences under container attributes, in flat definition
		local
			def_it: C_ITERATOR
		do
			create def_it.make (target.definition)
			def_it.do_all (agent flat_node_enter, agent flat_node_exit)
		end

	flat_node_enter (a_c_node: ARCHETYPE_CONSTRAINT; depth: INTEGER)
		do
			if attached {C_ATTRIBUTE} a_c_node as ca then
				if attached ca.cardinality and then not ca.cardinality.interval.upper_unbounded then
					if ca.occurrences_lower_sum > ca.cardinality.interval.upper then
						add_error("VACMCL", <<ca.path, ca.occurrences_lower_sum.out, ca.cardinality.interval.upper.out>>)
					elseif ca.minimum_child_count > ca.cardinality.interval.upper then
						add_error("VACMCO", <<ca.path, ca.minimum_child_count.out, ca.cardinality.interval.upper.out>>)
					end
				end
			end
		end

	flat_node_exit (a_c_node: ARCHETYPE_CONSTRAINT; depth: INTEGER)
		do
		end

end


--|
--| ***** BEGIN LICENSE BLOCK *****
--| Version: MPL 1.1/GPL 2.0/LGPL 2.1
--|
--| The contents of this file are subject to the Mozilla Public License Version
--| 1.1 (the 'License'); you may not use this file except in compliance with
--| the License. You may obtain a copy of the License at
--| http://www.mozilla.org/MPL/
--|
--| Software distributed under the License is distributed on an 'AS IS' basis,
--| WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
--| for the specific language governing rights and limitations under the
--| License.
--|
--| The Original Code is archetype_flat_validator.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2007
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|
--| Alternatively, the contents of this file may be used under the terms of
--| either the GNU General Public License Version 2 or later (the 'GPL'), or
--| the GNU Lesser General Public License Version 2.1 or later (the 'LGPL'),
--| in which case the provisions of the GPL or the LGPL are applicable instead
--| of those above. If you wish to allow use of your version of this file only
--| under the terms of either the GPL or the LGPL, and not to allow others to
--| use your version of this file under the terms of the MPL, indicate your
--| decision by deleting the provisions above and replace them with the notice
--| and other provisions required by the GPL or the LGPL. If you do not delete
--| the provisions above, a recipient may use your version of this file under
--| the terms of any one of the MPL, the GPL or the LGPL.
--|
--| ***** END LICENSE BLOCK *****
--|