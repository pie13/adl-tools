indexing
	component:   "openEHR Common Information Model"
	description: "Resource translation meta-data"
	keywords:    "resource, meta-data, translation"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2006 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class TRANSLATION_DETAILS

inherit
	EXTERNAL_ENVIRONMENT_ACCESS
		export
			{NONE} all
		undefine
			default_create
		end

	DT_CONVERTIBLE
		export
			{NONE} all
		redefine
			default_create
		end
		
	ADL_DEFINITIONS
		export
			{NONE} all
		undefine
			default_create
		end
	
create
	make, make_dt
	
feature -- Initialisation

	default_create is
			-- 
		do
			language := default_language_code
			create author.make(0)
		end
		
	make is
			-- default make
		do
			default_create
		end
		
	make_dt is
			-- make used by DT_OBJECT_CONVERTER
		do
			make
		end
		
feature -- Access

	language: CODE_PHRASE	
			-- Language of translation

	author: HASH_TABLE [STRING, STRING]
			-- Translator name and other demographic details

	accreditation: STRING	
			-- Accreditation of translator, usually a national translator's association id
	
	other_details: HASH_TABLE [STRING, STRING]	
			-- Any other meta-data
			
feature -- Modification

	set_language(a_lang: CODE_PHRASE) is
			-- set language
		require
			a_lang /= Void
		do
			language := a_lang
		end
		
	set_author(auth_details: HASH_TABLE [STRING, STRING]) is
			-- set author
		require
			auth_details /= Void and then not auth_details.is_empty
		do
			author := auth_details
		end

	add_author_detail(a_det_key, a_det_value: STRING) is
			-- set key=value pair into author
		require
			Key_valid: a_det_key /= Void and then not a_det_key.is_empty
			Value_valid: a_det_value /= Void and then not a_det_value.is_empty
		do
			author.put (a_det_value, a_det_key)
		end
		
feature {DT_OBJECT_CONVERTER} -- Conversion

	persistent_attributes: ARRAYED_LIST[STRING] is
			-- list of attribute names to persist as DT structure
			-- empty structure means all attributes
		once
			create Result.make(0)
			Result.extend("language")
			Result.extend("author")
			Result.extend("accreditation")
			Result.extend("other_details")
			Result.compare_objects
		end

invariant
	Language_valid: language /= Void and then code_set(code_set_id_languages).has(language)
	Author_valid: author /= Void	
	
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
--| The Original Code is archetype_description.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2004
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|	Sam Heard
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
