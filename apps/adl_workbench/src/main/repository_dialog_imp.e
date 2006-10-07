indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date: 2003/09/11 21:03:35 $"
	revision: "$Revision$"

deferred class
	REPOSITORY_DIALOG_IMP

inherit
	EV_DIALOG
		redefine
			initialize, is_in_default_state
		end
			
	CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_DIALOG generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			Precursor {EV_DIALOG}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_vertical_box_1
			create l_ev_horizontal_box_1
			create l_ev_label_1
			create repository_dialog_path_edit
			create repository_dialog_path_browse_bn
			create l_ev_label_2
			create l_ev_horizontal_box_2
			create l_ev_cell_1
			create repository_dialog_ok_bn
			create repository_dialog_cancel_bn
			
				-- Build_widget_structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (l_ev_label_1)
			l_ev_horizontal_box_1.extend (repository_dialog_path_edit)
			l_ev_horizontal_box_1.extend (repository_dialog_path_browse_bn)
			l_ev_vertical_box_1.extend (l_ev_label_2)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (l_ev_cell_1)
			l_ev_horizontal_box_2.extend (repository_dialog_ok_bn)
			l_ev_horizontal_box_2.extend (repository_dialog_cancel_bn)
			
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_1)
			l_ev_vertical_box_1.disable_item_expand (l_ev_label_2)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_2)
			l_ev_horizontal_box_1.set_padding_width (dialog_padding_width)
			l_ev_horizontal_box_1.set_border_width (dialog_border_width)
			l_ev_horizontal_box_1.disable_item_expand (repository_dialog_path_edit)
			l_ev_horizontal_box_1.disable_item_expand (repository_dialog_path_browse_bn)
			l_ev_label_1.set_text ("Repository path")
			repository_dialog_path_edit.set_background_color (editable_colour)
			repository_dialog_path_edit.set_minimum_width (300)
			repository_dialog_path_browse_bn.set_text ("Browse...")
			repository_dialog_path_browse_bn.set_minimum_width (65)
			l_ev_label_2.set_text ("(Choose the directory above where the archetypes are)")
			l_ev_horizontal_box_2.set_padding_width (dialog_padding_width)
			l_ev_horizontal_box_2.set_border_width (dialog_border_width)
			l_ev_horizontal_box_2.disable_item_expand (repository_dialog_ok_bn)
			l_ev_horizontal_box_2.disable_item_expand (repository_dialog_cancel_bn)
			repository_dialog_ok_bn.set_text ("OK")
			repository_dialog_ok_bn.set_minimum_width (100)
			repository_dialog_cancel_bn.set_text ("Cancel")
			repository_dialog_cancel_bn.set_minimum_width (100)
			set_maximum_width (app_max_width)
			set_maximum_height (app_min_height)
			set_title ("ADL Workbench repository settings")
			
				--Connect events.
			repository_dialog_path_browse_bn.select_actions.extend (agent get_path_directory)
			repository_dialog_ok_bn.select_actions.extend (agent repository_dialog_ok)
			repository_dialog_cancel_bn.select_actions.extend (agent repository_dialog_cancel)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	l_ev_cell_1: EV_CELL
	repository_dialog_path_browse_bn, repository_dialog_ok_bn, repository_dialog_cancel_bn: EV_BUTTON
	l_ev_horizontal_box_1,
	l_ev_horizontal_box_2: EV_HORIZONTAL_BOX
	l_ev_vertical_box_1: EV_VERTICAL_BOX
	l_ev_label_1, l_ev_label_2: EV_LABEL
	repository_dialog_path_edit: EV_TEXT_FIELD

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN is
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization is
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end
	
	get_path_directory is
			-- Called by `select_actions' of `repository_dialog_path_browse_bn'.
		deferred
		end
	
	repository_dialog_ok is
			-- Called by `select_actions' of `repository_dialog_ok_bn'.
		deferred
		end
	
	repository_dialog_cancel is
			-- Called by `select_actions' of `repository_dialog_cancel_bn'.
		deferred
		end
	

end -- class REPOSITORY_DIALOG_IMP