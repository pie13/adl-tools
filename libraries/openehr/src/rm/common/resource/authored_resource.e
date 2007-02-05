indexing
	component:   "openEHR Common Information Model"
	description: "Abstract idea of an online resource authored by a (usually) human author."
	keywords:    "archetype"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2006 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class AUTHORED_RESOURCE

inherit
	EXTERNAL_ENVIRONMENT_ACCESS
		export
			{NONE} all
		end

feature -- Definitions

	Uncontrolled_revision_name: STRING is "(uncontrolled)"
		
feature -- Access

	original_language: CODE_PHRASE
			-- Language in which this resource was initially authored. Although there 
			-- is no language primacy of resources overall, the language of original 
			-- authoring is required to ensure natural language translations can preserve 
			-- quality. Language is relevant in both the description and ontology sections.

	translations: HASH_TABLE [TRANSLATION_DETAILS, STRING]
			-- List of details for each natural translation made of this resource, keyed by 
			-- language. For each translation listed here, there must be corresponding 
			-- sections in all language-dependent parts of the resource. 

	description: RESOURCE_DESCRIPTION
			-- Description and lifecycle information of the resource.

	revision_history: REVISION_HISTORY
			-- The revision history of the resource. Only required if is_controlled = True 
			-- (avoids large revision histories for informal or private editing situations).

	current_revision: STRING is
			-- Current revision if revision_history exists else "(uncontrolled)".
		do
		end

	languages_available: SET [STRING] is
			-- Total list of languages available in this resource, derived from 
			-- original_language and translations.
		do
		end

feature -- Status Report

	is_controlled: BOOLEAN	
			-- True if this resource is under any kind of change control (even file 
			-- copying), in which case revision history is created.

feature -- Modification

	set_description(a_desc: RESOURCE_DESCRIPTION) is
		require
			a_desc /= Void
		do
			description := a_desc
		end

	set_translations(a_trans: HASH_TABLE [TRANSLATION_DETAILS, STRING]) is
			-- set translations
		require
			a_trans /= Void
		do
			translations := a_trans
		end

feature -- Status setting

	set_is_controlled is
			-- set 'is_controlled'
		do
			is_controlled := True
		end

feature -- Serialisation

	synchronise is
			-- synchronise object representation of resource to forms suitable for
			-- serialisation
		do
			-- FIXME - translations are handled like this until ADL2, when the 
			-- whole archetype will just be a dADL doc
			create orig_lang_translations.make
			orig_lang_translations.set_original_language (original_language)
			if translations /= Void then
				orig_lang_translations.set_translations(translations)
			end
			orig_lang_translations.synchronise_to_tree
			if description /= Void then
				description.synchronise_to_tree			
			end
		end
		
feature {ADL_ENGINE} -- Implementation

	orig_lang_translations: LANGUAGE_TRANSLATIONS
			-- holds a copy of translations for purposes of DT object/dADL 
			-- reading and writing
			
invariant
	Description_exists: description /= Void
	Original_language_valid: original_language /= void and then 
		code_set(Code_set_id_languages).has(original_language)
	Languages_available_valid: languages_available /= Void and then 
		languages_available.has(original_language.as_string)
	Revision_history_valid: is_controlled xor revision_history = Void
	Current_revision_valid: current_revision /= Void and not is_controlled 
		implies current_revision.is_equal(Uncontrolled_revision_name)	
	Translations_valid: translations /= Void implies (not translations.is_empty and 
		not translations.has(original_language.code_string))
--	Description_valid: translations /= Void implies (description.details.for_all
--		(d | translations.has_key(d.language.code_string)))

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
--| The Original Code is adl_archetype.e.
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
