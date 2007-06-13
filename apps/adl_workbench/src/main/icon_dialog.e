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
			ok_button.select_actions.extend (agent hide)
			set_default_cancel_button (ok_button)
			set_default_push_button (ok_button)
			add_help_items
		end

feature -- Access

	main_window: MAIN_WINDOW
			-- main window of app

feature -- Modification

	set_main_window (a_mw: MAIN_WINDOW) is
			-- set main_window
		require
			a_mw /= Void
		do
			main_window := a_mw
		end

feature {NONE} -- Implementation

	add_help_items is
			-- Add icon explanation row items
		local
			list_item: EV_LIST_ITEM
		do
			from
				pixmap_help_table.start
			until
				pixmap_help_table.off
			loop
				create list_item.make_with_text (pixmap_help_table.item_for_iteration)

				if pixmaps.has (pixmap_help_table.key_for_iteration) then
					list_item.set_pixmap (pixmaps [pixmap_help_table.key_for_iteration])
				end

				icon_help_list.extend (list_item)
				pixmap_help_table.forth
			end
		end

end

