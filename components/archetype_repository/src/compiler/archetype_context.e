indexing
	component:   "openEHR Archetype Project"
	description: "[
				 Wrapper object for ARCHETYPE being parsed & compiled; provides a place
				 to record intermediate prodcts of compilation. Also includes parent
				 relationship between specialised archetypes.
				 ]"
	keywords:    "ADL"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2007 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"


class ARCH_CONTEXT

inherit
	ARCHETYPE_DEFINITIONS
		export
			{NONE} all
		end

	MESSAGE_BILLBOARD
		export
			{NONE} all
		end

create
	make

feature -- Initialisation

	make(an_archetype: ARCHETYPE) is
			-- create with a new differential form (i.e. source form) archetype
		require
			Archetype_exists: an_archetype /= Void
		do
			archetype := an_archetype
			if not an_archetype.is_specialised then
				-- FIXME for the moment
				flat_form := archetype
			end

			archetype.validate
			if archetype.is_valid then
				post_info(Current, "parse_archetype", "parse_archetype_i2", <<archetype.archetype_id.as_string>>)
				is_valid := True
			else
				post_error(Current, "parse_archetype", "parse_archetype_e2", <<archetype.archetype_id.as_string, archetype.validator.errors>>)
			end
			if archetype.validator.has_warnings then
				post_warning(Current, "parse_archetype", "parse_archetype_w2", <<archetype.archetype_id.as_string, archetype.validator.warnings>>)
			end
		end

feature -- Access

	archetype: ARCHETYPE
			-- archetype representing differential structure with respect to parent archetype;
			-- if this is a non-specialised archetype, then it is the same as the flat form, else
			-- it is just the differences (like an OO source file for a subclass)

	flat_form: ARCHETYPE
			-- inheritance-flattened form of archetype

	specialisation_parent: ARCHETYPE
			-- parent archetype if this one is specialised, or else Void

feature -- Commands

	convert_archetype_to_differential
			-- modify 'archetype' if specialised, to be in differential form by removing inherited parts
		do
			if is_specialised then
				remove_inherited_subtrees

				--FIXME: remove inherited ontology codes. Note that there are some lists already in the
				-- ARCHETYPE with lists of unused codes; not all inherited. But it is a start
			end
		end

feature -- Status Report

	is_valid: BOOLEAN
			-- True if archetype object created and 'is_valid' True

	is_specialised: BOOLEAN is
			-- True if archetype is a specialisation
		do
			Result := archetype.is_specialised
		end

feature {NONE} -- Implementation

	remove_inherited_subtrees is
			-- remove purely inherited subtrees from the achetype definition, making it a
			-- differential form structure
		do
			archetype.build_inherited_subtree_list
			-- FIXME: now do the removal
		end

invariant
	Parent_existence: specialisation_parent /= Void implies is_specialised
	Parent_validity: specialisation_parent /= Void implies specialisation_parent.archetype_id.semantic_id.is_equal(archetype.archetype_id.semantic_parent_id)

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
--| The Original Code is archetype_context.e.
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