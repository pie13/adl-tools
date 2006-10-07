indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date: 2005/01/07 19:38:13 $"
	revision: "$Revision$"

class
	ICON_DIALOG

inherit
	ICON_DIALOG_IMP
	
	SHARED_UI_RESOURCES
		export
			{NONE} all
		undefine
			copy, default_create
		end

feature {NONE} -- Initialization

	user_initialization is
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		do
			add_help_items
		end

feature -- Access

	main_window: MAIN_WINDOW
			-- main window of app
			
feature -- Modification

	set_main_window(a_mw: MAIN_WINDOW) is
			-- set main_window
		require
			a_mw /= Void
		do
			main_window := a_mw
		end
	
feature {NONE} -- Implementation

	icon_dialog_ok is
			-- Called by `select_actions' of `ok_button'.
		do
			hide
		end	

	add_help_items is
			-- Add icon explanation row items
		local
			list_item: EV_LIST_ITEM
		do		
			from
				pixmap_help_index.start
			until
				pixmap_help_index.off
			loop
				create list_item.make_with_text (pixmap_help_table.item(pixmap_help_index.item))
				list_item.set_pixmap (pixmaps.item(pixmap_help_index.item))
				icon_help_list.extend (list_item)
				pixmap_help_index.forth
			end
		end

end
