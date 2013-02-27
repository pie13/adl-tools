indexing
	component:   "openEHR Common Reference Model"

	description: "[
			 Ancestor class of identifiers of informational objects. Ids may be completely meaningless, 
			 in which case their only job is to refer to something, or may carry some information to do 
			 with the identified object.
			 ]"
	keywords:    "object identifiers"

	design:      "openEHR Common Reference Model 1.4.1"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2000-2004 The openEHR Foundation <http://www.openEHR.org>"
	license:     "See notice at bottom of class"

	file:        "$URL: http://www.openehr.org/svn/ref_impl_eiffel/TAGS/Aug2007/libraries/openehr/src/rm/support/identification/object_id.e $"
	revision:    "$LastChangedRevision: 1873 $"
	last_change: "$LastChangedDate: 2013-02-26 22:33:28 +1100 (Tue, 26 Feb 2013) $"

deferred class OBJECT_ID

inherit
	COMPARABLE
		redefine
			out
		end

feature {NONE} -- Initialization

	make_from_string (a_string: STRING)
			-- make from a string of the same form as `id', i.e. "root::extension"
		require
			String_exists: valid_id (a_string)
		do
			value := a_string
		end

feature -- Access

	value: STRING

feature -- Status Report

	valid_id(an_id:STRING): BOOLEAN is
			--
		require
			an_id_valid: an_id /= Void and then not an_id.is_empty
		deferred
		end

feature -- Comparison

	infix "<" (other: like Current): BOOLEAN is
			-- Is current object less than `other'?
		do
			Result := value < other.value
		end

feature -- Output

	out: STRING
		do
			Result := value
		end

invariant
	value_exists: value /= Void and then not value.is_empty

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
--| The Original Code is object_id.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2004
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
