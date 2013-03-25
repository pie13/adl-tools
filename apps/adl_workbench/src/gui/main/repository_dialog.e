note
	component:   "openEHR Archetype Project"
	description: "[
				 Dialog for the user to enter the repository paths (original version of this class was generated by EiffelBuild).
				 The dialog takes a complete copy of the current repository structure, and allows the user to play with it, i.e.
				 add new repositories, remove repositories and rename repositories. No choosing of the 'current repository' is done on this 
				 dialog - that is done in the dropdown on the main application form. However, removal of the current repository will
				 cause a new repository to be used in the main application.
				 ]"
	keywords:    "GUI, ADL, archetype"
	author:      "Thomas Beale"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2008-2011 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "See notice at bottom of class"

class
	REPOSITORY_DIALOG

inherit
	EV_DIALOG
		redefine
			initialize, create_interface_objects, is_in_default_state
		end

	SHARED_APP_UI_RESOURCES
		undefine
			is_equal, default_create, copy
		end

	STRING_UTILITIES
		export
			{NONE}
		undefine
			is_equal, default_create, copy
		end

feature {NONE} -- Initialization

	create_interface_objects
			-- Initialize `Current'.
		do
			Precursor {EV_DIALOG}

			create gui_controls.make (0)

			-- ============ root container ============
			create ev_root_container
			ev_root_container.set_padding (Default_padding_width)
			ev_root_container.set_border_width (Default_border_width)

			-- dialog frame
			create repository_frame_ctl.make (get_text ("repo_cfg_list_text"), 0, 0, False)
			ev_root_container.extend (repository_frame_ctl.ev_root_container)

			-- repository list + buttons HBOX
			repository_frame_ctl.add_row (False)

			-- repository list
			create configs_list
			configs_list.set_minimum_height (100)
			configs_list.select_actions.extend (agent on_select_config)
			repository_frame_ctl.extend (configs_list, True)

			-- ========== buttons VBOX ==============
			create ev_vbox_2
			repository_frame_ctl.extend (ev_vbox_2, False)
			ev_vbox_2.set_minimum_width (100)
			ev_vbox_2.set_padding (Default_padding_width)
			ev_vbox_2.set_border_width (Default_border_width)

			-- add button
			create repository_add_button
			repository_add_button.set_text (get_text ("add_new_repo_cfg_button_text"))
			repository_add_button.set_tooltip (get_text ("add_new_repo_cfg_button_tooltip"))
			repository_add_button.select_actions.extend (agent add_new_config)
			ev_vbox_2.extend (repository_add_button)
			ev_vbox_2.disable_item_expand (repository_add_button)

			-- remove button
			create repository_remove_button
			repository_remove_button.set_text (get_text ("remove_repo_cfg_button_text"))
			repository_remove_button.set_tooltip (get_text ("remove_repo_cfg_button_tooltip"))
			repository_remove_button.select_actions.extend (agent remove_selected_config)
			ev_vbox_2.extend (repository_remove_button)
			ev_vbox_2.disable_item_expand (repository_remove_button)

			-- edit button
			create repository_edit_button
			repository_edit_button.set_text (get_text ("edit_repo_cfg_button_text"))
			repository_edit_button.set_tooltip (get_text ("edit_repo_cfg_button_tooltip"))
			repository_edit_button.select_actions.extend (agent edit_selected_config)
			ev_vbox_2.extend (repository_edit_button)
			ev_vbox_2.disable_item_expand (repository_edit_button)

			-- reference path display control
			create ref_path_ctl.make_readonly (get_text ("ref_repo_text"),
				agent :STRING
					do
						check attached selected_repository_key as spk then
							Result := rep_config_table_copy.repository (spk).reference_path
						end
					end,
				0, 0, True)
			ev_root_container.extend (ref_path_ctl.ev_root_container)
			ev_root_container.disable_item_expand (ref_path_ctl.ev_root_container)
			gui_controls.extend (ref_path_ctl)

			-- work path display control
			create work_path_ctl.make_readonly (get_text ("work_repo_text"),
				agent :STRING
					do
						create Result.make_empty
						check attached selected_repository_key as spk then
							if rep_config_table_copy.repository (spk).has_work_path and then
								attached rep_config_table_copy.repository (spk).work_path as wrep
							then
								Result := wrep
							end
						end
					end,
				0, 0, True)
			ev_root_container.extend (work_path_ctl.ev_root_container)
			ev_root_container.disable_item_expand (work_path_ctl.ev_root_container)
			gui_controls.extend (work_path_ctl)

			-- ============ Ok/Cancel buttons ============
			create ok_cancel_buttons.make (agent on_ok, agent hide)
			ev_root_container.extend (ok_cancel_buttons.ev_root_container)
			ev_root_container.disable_item_expand (ok_cancel_buttons.ev_root_container)
		end

	initialize
		do
			precursor
			set_minimum_width (530)
			set_minimum_height (280)
			set_maximum_width (800)
			set_maximum_height (800)
			set_title (get_text ("repository_dialog_title"))
			set_icon_pixmap (adl_workbench_logo)
			extend (ev_root_container)

			set_default_cancel_button (ok_cancel_buttons.cancel_button)
			set_default_push_button (ok_cancel_buttons.ok_button)

			-- Connect events.
			show_actions.extend (agent on_show)

			rep_config_table_copy := repository_config_table.deep_twin
			selected_repository_key := rep_config_table_copy.current_repository_name
			populate_controls
		end

feature {NONE} -- Events

	on_show
			-- On showing the dialog, set focus to the repository combo box, adding a new one if there are none yet.
		do
			if rep_config_table_copy.is_empty then
				add_new_config
			else
				configs_list.set_focus
			end
		end

	on_ok
			-- When the user clicks the OK button, save the changes and rebuild `archetype_directory'.
		do
			set_repository_config_table (rep_config_table_copy)
			current_repository_removed := current_repository_removed_pending
			current_repository_changed := current_repository_changed_pending
			any_repository_changes_made := any_repository_changes_made_pending or current_repository_removed or current_repository_changed
			hide
		end

	on_select_config
			-- Called by `select_actions' of `configs_list'; all that is done is to populate the
			-- repository directory controls with the relevant directories, and to set the local
			-- variable `selected_config' (not to be confused with the 'current repository' chosen
			-- in the application)
		do
			if not configs_list.is_empty then
				selected_repository_key := utf32_to_utf8 (configs_list.selected_item.text)
				do_populate
			end
		end

	add_new_config
			-- Called by `select_actions' of `repository_add_button'.
		local
			edit_dialog: REPOSITORY_EDIT_DIALOG
		do
			create edit_dialog.make_new (rep_config_table_copy)
			edit_dialog.show_modal_to_window (Current)
			if edit_dialog.is_valid and attached rep_config_table_copy.current_repository_name as cpn then
				selected_repository_key := cpn
				any_repository_changes_made_pending := any_repository_changes_made_pending or edit_dialog.has_changed_repository
				-- if there was no repository initially, and one was just created => register change
				current_repository_changed_pending := current_repository_changed_pending or not repository_config_table.has_current_repository
				populate_controls
			end
			edit_dialog.destroy
		end

	edit_selected_config
			-- Called by `select_actions' of `repository_edit_button'.
		local
			edit_dialog: REPOSITORY_EDIT_DIALOG
		do
			if attached selected_repository_key as spk then
				create edit_dialog.make_edit (rep_config_table_copy, spk)
				edit_dialog.show_modal_to_window (Current)
				if edit_dialog.is_valid and edit_dialog.has_changed_repository and attached rep_config_table_copy.current_repository_name as cpn then
					selected_repository_key := cpn
					populate_controls
					current_repository_changed_pending := current_repository_changed_pending or repository_config_table.current_repository_name ~ edit_dialog.initial_repository_name
					any_repository_changes_made_pending := True
				end
				edit_dialog.destroy
			end
		end

	remove_selected_config
			-- Called by `select_actions' of `repository_remove_button'.
		local
			repo_names: ARRAYED_LIST [STRING]
			error_dialog: EV_INFORMATION_DIALOG
			prof_to_remove: STRING
		do
			if rep_config_table_copy.count > 1 then
				check attached selected_repository_key as spk then
					prof_to_remove := spk
				end
				current_repository_removed_pending := current_repository_removed_pending or repository_config_table.current_repository_name ~ prof_to_remove
				rep_config_table_copy.remove_repository (prof_to_remove)

				-- figure out which repository to make the new current one
				repo_names := repository_names
				repo_names.search (prof_to_remove)
				repo_names.remove
				if not repo_names.is_empty then
					if repo_names.off then
						repo_names.finish
					end
					selected_repository_key := repo_names.item
					rep_config_table_copy.set_current_repository_name (repo_names.item)
				else
					selected_repository_key := Void
				end
				populate_controls
			else
				create error_dialog.make_with_text (get_msg_line ("cant_remove_last_repo_cfg", Void))
				error_dialog.show_modal_to_window (Current)
			end
		end

feature {NONE} -- Access

	rep_config_table_copy: REPOSITORY_CONFIG_TABLE
			-- local copy of the state of repositories at dialog launch, as a table of
			-- {{ref_path, working path}, repo_name}

	selected_repository_key: detachable STRING
			-- name of repository currently chosen in dialog

feature -- Status

	current_repository_removed: BOOLEAN
			-- flag to indicate that one or more repositories were removed; set from `current_repository_removed_pending'
			-- Should only be set in `on_ok', because until changes are written from the repositories 'copy'
			-- object to the real thing (done in `on_ok'), nothing has actually changed in the application

	current_repository_changed: BOOLEAN
			-- Has the user changed the paths or name for the current repository in use in the main application?
			-- Set from `current_repository_changed_pending'
			-- Should only be set in `on_ok', because until changes are written from the repositories 'copy'
			-- object to the real thing (done in `on_ok'), nothing has actually changed in the application

	any_repository_changes_made: BOOLEAN
			-- have any changes been made at all (if so, resources should be saved in application)
			-- Should only be set in `on_ok', because until changes are written from the repositories 'copy'
			-- object to the real thing (done in `on_ok'), nothing has actually changed in the application

feature {NONE} -- Implementation

	do_populate
			-- Set the dialog widgets from shared settings.
		do
			gui_controls.do_all (agent (an_item: EVX_DATA_CONTROL) do an_item.populate end)
		end

	any_repository_changes_made_pending: BOOLEAN
			-- True if any change at all was made to `current_repository_removed'

	current_repository_removed_pending: BOOLEAN
			-- flag to indicate that one or more repositories were removed from cached copy; this flag will
			-- be copied to `current_repository_removed'

	current_repository_changed_pending: BOOLEAN
			-- Has the user changed the paths or name for the current repository in use in the main application,
			-- within the cached copy of the repositories?

	repository_names: attached ARRAYED_LIST [STRING]
			-- The names of all of the repositories displayed in `repository_list'.
		do
			Result := configs_list.strings_8
			Result.compare_objects
		ensure
			comparing_objects: Result.object_comparison
			correct_count: Result.count = configs_list.count
		end

	populate_controls
			-- Initialise the dialog's widgets from shared settings.
		do
			configs_list.set_strings (rep_config_table_copy.names)
			if not configs_list.is_empty and attached selected_repository_key as spf then
				configs_list.i_th (repository_names.index_of (spf, 1).max (1)).enable_select
				do_populate
			end
		end

	ev_root_container: EV_VERTICAL_BOX

	gui_controls: ARRAYED_LIST [EVX_DATA_CONTROL]

	ev_vbox_2: EV_VERTICAL_BOX

	repository_frame_ctl: EVX_FRAME_CONTROL

	ref_path_ctl, work_path_ctl: EVX_SINGLE_LINE_TEXT_CONTROL

	configs_list: EV_LIST

	repository_add_button, repository_remove_button, repository_edit_button: EV_BUTTON

	ok_cancel_buttons: EVX_OK_CANCEL_CONTROLS

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			Result := True
		end

invariant
	selected_repository_key_valid: attached selected_repository_key implies rep_config_table_copy.has_repository (selected_repository_key)

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
