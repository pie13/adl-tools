note
	component:   "openEHR Archetype Project"
	description: "[
				 Dialog for the user to enter the repository paths (original version of this class was generated by EiffelBuild).
				 The dialog takes a complete copy of the current profiles structure, and allows the user to play with it, i.e.
				 add new profiles, remove profiles and rename profiles. No choosing of the 'current profile' is done on this 
				 dialog - that is done in the dropdown on the main application form. However, removal of the current profile will
				 cause a new profile to be used in the main application.
				 ]"
	keywords:    "GUI, ADL, archetype"
	author:      "Thomas Beale"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2008-2011 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class
	REPOSITORY_DIALOG

inherit
	EV_DIALOG
		redefine
			initialize, is_in_default_state
		end

	GUI_DEFINITIONS
		undefine
			is_equal, default_create, copy
		end

feature {NONE} -- Initialization

	initialize
			-- Initialize `Current'.
		do
			Precursor {EV_DIALOG}

			-- create widgets
			create ev_vbox_1
			create profile_frame
			create ev_hbox_1
			create profile_list
			create ev_vbox_2
			create profile_add_button
			create profile_remove_button
			create profile_edit_button
			create ref_path_hbox
			create reference_path_text
			create work_path_hbox
			create work_path_text
			create ev_hbox_2
			create ev_cell_1
			create ok_button
			create cancel_button

			-- connect widgets
			extend (ev_vbox_1)
			ev_vbox_1.extend (profile_frame)
			profile_frame.extend (ev_hbox_1)
			ev_hbox_1.extend (profile_list)
			ev_hbox_1.extend (ev_vbox_2)
			ev_vbox_2.extend (profile_add_button)
			ev_vbox_2.extend (profile_remove_button)
			ev_vbox_2.extend (profile_edit_button)
			ev_vbox_1.extend (ref_path_hbox)
			ref_path_hbox.extend (reference_path_text)
			ev_vbox_1.extend (work_path_hbox)
			work_path_hbox.extend (work_path_text)
			ev_vbox_1.extend (ev_hbox_2)
			ev_hbox_2.extend (ev_cell_1)
			ev_hbox_2.extend (ok_button)
			ev_hbox_2.extend (cancel_button)

			ev_vbox_1.set_minimum_height (220)
			ev_vbox_1.set_padding (padding_width)
			ev_vbox_1.set_border_width (border_width)
			ev_vbox_1.disable_item_expand (ref_path_hbox)
			ev_vbox_1.disable_item_expand (work_path_hbox)
			ev_vbox_1.disable_item_expand (ev_hbox_2)
			profile_frame.set_text ("Profiles")
			profile_frame.set_minimum_height (120)
			ev_hbox_1.set_minimum_height (110)
			ev_hbox_1.set_padding (padding_width)
			ev_hbox_1.set_border_width (border_width)
			ev_hbox_1.disable_item_expand (ev_vbox_2)
			profile_list.set_minimum_height (100)
			ev_vbox_2.set_minimum_width (100)
			ev_vbox_2.set_padding (padding_width)
			ev_vbox_2.set_border_width (border_width)
			ev_vbox_2.disable_item_expand (profile_add_button)
			ev_vbox_2.disable_item_expand (profile_remove_button)
			ev_vbox_2.disable_item_expand (profile_edit_button)
			profile_add_button.set_text ("Add New")
			profile_add_button.set_tooltip ("Add a new profile")
			profile_remove_button.set_text ("Remove")
			profile_remove_button.set_tooltip ("Remove selected profile")
			profile_edit_button.set_text ("Edit")
			profile_edit_button.set_tooltip ("Edit selected profile")
			ref_path_hbox.set_text ("Reference repository")
			reference_path_text.disable_edit
			work_path_hbox.set_text ("Work repository")
			work_path_text.disable_edit
			ev_hbox_2.set_padding (15)
			ev_hbox_2.set_border_width (border_width)
			ev_hbox_2.disable_item_expand (ok_button)
			ev_hbox_2.disable_item_expand (cancel_button)
			ok_button.set_text ("OK")
			ok_button.set_minimum_width (100)
			ok_button.set_minimum_height (26)
			cancel_button.set_text ("Cancel")
			cancel_button.set_minimum_width (100)
			cancel_button.set_minimum_height (26)
			set_minimum_width (500)
			set_minimum_height (280)
			set_maximum_width (800)
			set_maximum_height (800)
			set_title ("ADL Workbench Repository Profile Configuration")
			set_icon_pixmap (adl_workbench_icon)

			-- Connect events.
			profile_list.select_actions.extend (agent on_select_profile)
			profile_add_button.select_actions.extend (agent add_new_profile)
			profile_remove_button.select_actions.extend (agent remove_selected_profile)
			profile_edit_button.select_actions.extend (agent edit_selected_profile)
			ok_button.select_actions.extend (agent on_ok)
			show_actions.extend (agent on_show)
			cancel_button.select_actions.extend (agent hide)
			set_default_cancel_button (cancel_button)
			set_default_push_button (ok_button)

			rep_profiles_copy := repository_profiles.deep_twin
			selected_profile_key := rep_profiles_copy.current_profile_name
			populate_controls
		end

feature {NONE} -- Events

	on_show
			-- On showing the dialog, set focus to the profile combo box, adding a new one if there are none yet.
		do
			if rep_profiles_copy.is_empty then
				add_new_profile
			else
				profile_list.set_focus
			end
		end

	on_ok
			-- When the user clicks the OK button, save the changes and rebuild `archetype_directory'.
		do
			set_repository_profiles (rep_profiles_copy)
			current_profile_removed := current_profile_removed_pending
			current_profile_changed := current_profile_changed_pending
			any_profile_changes_made := any_profile_changes_made_pending or current_profile_removed or current_profile_changed
			hide
		end

	on_select_profile
			-- Called by `select_actions' of `profile_list'; all that is done is to populate the
			-- repository directory controls with the relevant directories, and to set the local
			-- variable `selected_profile' (not to be confused with the 'current profile' chosen
			-- in the application)
		do
			if not profile_list.is_empty then
				selected_profile_key := profile_list.selected_item.text.as_string_8
				populate_path_controls
			end
		end

	populate_path_controls
		do
			if not profile_list.is_empty then
				reference_path_text.set_text (rep_profiles_copy.profile (selected_profile_key).reference_repository)
				if rep_profiles_copy.profile (selected_profile_key).has_work_repository then
					work_path_text.set_text (rep_profiles_copy.profile (selected_profile_key).work_repository)
				else
					work_path_text.remove_text
				end
			end
		end

	add_new_profile
			-- Called by `select_actions' of `profile_add_button'.
		local
			edit_dialog: PROFILE_EDIT_DIALOG
		do
			create edit_dialog.make_new (rep_profiles_copy)
			edit_dialog.show_modal_to_window (Current)
			if edit_dialog.is_valid then
				selected_profile_key := rep_profiles_copy.current_profile_name
				any_profile_changes_made_pending := any_profile_changes_made_pending or edit_dialog.has_changed_profile
				-- if there was no profile initially, and one was just created => register change
				current_profile_changed_pending := current_profile_changed_pending or not repository_profiles.has_current_profile
				populate_controls
			end
			edit_dialog.destroy
		end

	edit_selected_profile
			-- Called by `select_actions' of `profile_edit_button'.
		local
			edit_dialog: PROFILE_EDIT_DIALOG
		do
			if attached selected_profile_key then
				create edit_dialog.make_edit (rep_profiles_copy, selected_profile_key)
				edit_dialog.show_modal_to_window (Current)
				if edit_dialog.is_valid and edit_dialog.has_changed_profile then
					selected_profile_key := rep_profiles_copy.current_profile_name
					populate_controls
					current_profile_changed_pending := current_profile_changed_pending or repository_profiles.current_profile_name ~ edit_dialog.initial_profile_name
					any_profile_changes_made_pending := True
				end
				edit_dialog.destroy
			end
		end

	remove_selected_profile
			-- Called by `select_actions' of `profile_remove_button'.
		local
			prof_names: ARRAYED_LIST [STRING]
			error_dialog: EV_INFORMATION_DIALOG
		do
			if rep_profiles_copy.count > 1 then
				current_profile_removed_pending := current_profile_removed_pending or repository_profiles.current_profile_name ~ selected_profile_key
				rep_profiles_copy.remove_profile (selected_profile_key)

				-- figure out which profile to make the new current one
				prof_names := profile_names
				prof_names.search (selected_profile_key)
				prof_names.remove
				if not prof_names.is_empty then
					if prof_names.off then
						prof_names.finish
					end
					selected_profile_key := prof_names.item
					rep_profiles_copy.set_current_profile_name (selected_profile_key)
				else
					selected_profile_key := Void
				end
				populate_controls
			else
				create error_dialog.make_with_text (create_message_line ("cant_remove_last_profile", Void))
				error_dialog.show_modal_to_window (Current)
			end
		end

feature {NONE} -- Access

	rep_profiles_copy: attached REPOSITORY_PROFILE_CONFIG
			-- local copy of the state of profiles at dialog launch, as a table of
			-- {{ref_path, working path}, prof_name}

	selected_profile_key: STRING
			-- name of profile currently chosen in dialog

feature -- Status

	current_profile_removed: BOOLEAN
			-- flag to indicate that one or more profiles were removed; set from `current_profile_removed_pending'
			-- Should only be set in `on_ok', because until changes are written from the profiles 'copy'
			-- object to the real thing (done in `on_ok'), nothing has actually changed in the application

	current_profile_changed: BOOLEAN
			-- Has the user changed the paths or name for the current profile in use in the main application?
			-- Set from `current_profile_changed_pending'
			-- Should only be set in `on_ok', because until changes are written from the profiles 'copy'
			-- object to the real thing (done in `on_ok'), nothing has actually changed in the application

	any_profile_changes_made: BOOLEAN
			-- have any changes been made at all (if so, resources should be saved in application)
			-- Should only be set in `on_ok', because until changes are written from the profiles 'copy'
			-- object to the real thing (done in `on_ok'), nothing has actually changed in the application

feature {NONE} -- Implementation

	any_profile_changes_made_pending: BOOLEAN
			-- True if any change at all was made to `current_profile_removed'

	current_profile_removed_pending: BOOLEAN
			-- flag to indicate that one or more profiles were removed from cached copy; this flag will
			-- be copied to `current_profile_removed'

	current_profile_changed_pending: BOOLEAN
			-- Has the user changed the paths or name for the current profile in use in the main application,
			-- within the cached copy of the profiles?

	profile_names: attached ARRAYED_LIST [STRING]
			-- The names of all of the profiles displayed in `profile_list'.
		do
			Result := profile_list.strings_8
			Result.compare_objects
		ensure
			comparing_objects: Result.object_comparison
			correct_count: Result.count = profile_list.count
		end

	populate_controls
			-- Initialise the dialog's widgets from shared settings.
		do
			profile_list.set_strings (rep_profiles_copy.names)

			if not profile_list.is_empty then
				profile_list.i_th (profile_names.index_of (selected_profile_key, 1).max (1)).enable_select
				populate_path_controls
			end
		end


	ev_vbox_1, ev_vbox_2: EV_VERTICAL_BOX
	profile_frame, ref_path_hbox, work_path_hbox: EV_FRAME
	ev_hbox_1,
	ev_hbox_2: EV_HORIZONTAL_BOX
	profile_list: EV_LIST
	profile_add_button, profile_remove_button, profile_edit_button,
	ok_button, cancel_button: EV_BUTTON
	reference_path_text, work_path_text: EV_TEXT_FIELD
	ev_cell_1: EV_CELL

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			Result := True
		end

invariant
	selected_profile_key_valid: attached selected_profile_key implies rep_profiles_copy.has_profile (selected_profile_key)

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
--| The Original Code is repository_dialog.e.
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
