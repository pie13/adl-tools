indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date: 2003/09/11 21:03:35 $"
	revision: "$Revision$"

deferred class
	ICON_DIALOG_IMP

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
			create icon_help_list
			create l_ev_horizontal_box_1
			create l_ev_cell_1
			create ok_button
			create l_ev_cell_2
			
				-- Build_widget_structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (icon_help_list)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (l_ev_cell_1)
			l_ev_horizontal_box_1.extend (ok_button)
			l_ev_horizontal_box_1.extend (l_ev_cell_2)
			
			l_ev_vertical_box_1.set_minimum_width (340)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_1)
			icon_help_list.set_background_color (editable_colour)
			icon_help_list.set_minimum_width (300)
			icon_help_list.set_minimum_height (400)
			l_ev_horizontal_box_1.disable_item_expand (ok_button)
			ok_button.set_text ("OK")
			ok_button.set_minimum_width (50)
			set_minimum_width (380)
			set_minimum_height (525)
			set_title ("ADL Workbench Icon Key")
			
				--Connect events.
			ok_button.select_actions.extend (agent icon_dialog_ok)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	icon_help_list: EV_LIST
	l_ev_cell_1, l_ev_cell_2: EV_CELL
	ok_button: EV_BUTTON
	l_ev_horizontal_box_1: EV_HORIZONTAL_BOX
	l_ev_vertical_box_1: EV_VERTICAL_BOX

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
	
	icon_dialog_ok is
			-- Called by `select_actions' of `ok_button'.
		deferred
		end
	

end -- class ICON_DIALOG_IMP