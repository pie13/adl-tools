indexing	
	component:   "openEHR Archetype Project"
	description: "Node map control"
	keywords:    "test, ADL"
	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2003-2005 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class GUI_NODE_MAP_CONTROL

inherit
	SHARED_ADL_INTERFACE
		export
			{NONE} all
		end

	SHARED_UI_RESOURCES
		export
			{NONE} all
		end

	SPECIALISATION_STATUSES
		export
			{NONE} all
		end

create
	make

feature -- Initialisation

	make(a_main_window: MAIN_WINDOW) is
		require
			a_main_window /= Void
		do
			gui := a_main_window
			adl_engine := adl_interface.adl_engine
			gui_tree := gui.parsed_archetype_tree
			in_source_status_mode := True
		end

feature -- Status Report

	in_technical_mode: BOOLEAN
			-- If True, show more technical detail on each node
	
	is_expanded: BOOLEAN
			-- True if last whole tree operation was expand

	in_source_status_mode: BOOLEAN
			-- True if node visualisation should show definition status of each node,
			-- i.e. inherited, redefine etc

feature -- Commands

	toggle_technical_mode is
			-- toggle technical mode setting
		do
			in_technical_mode := not in_technical_mode
			repopulate
			if in_technical_mode then
				gui.tree_technical_mode_bn.set_text("Domain")
			else
				gui.tree_technical_mode_bn.set_text("Technical")
			end
		end
		
	set_technical_node is
			-- set technical mode on
		do
			in_technical_mode := True
			repopulate
		end
		
	set_domain_mode is
			-- set technical mode off
		do
			in_technical_mode := False
			repopulate
		end

	toggle_source_status_mode is		
			-- set in_source_origin_mode
		do
			in_source_status_mode := not in_source_status_mode
			repopulate
			if in_source_status_mode then
				gui.tree_source_status_bn.set_text("Flat view")
			else
				gui.tree_source_status_bn.set_text("Inheritance")
			end
		end
		
	clear is
		do
			gui_tree.wipe_out
		end

	populate is
			-- populate the ADL tree control by creating it from scratch
		do
			clear
			archetype_tree_root_set := False
			create tree_item_stack.make(0)
			create tree_iterator.make(adl_engine.archetype.definition.representation)
			tree_iterator.do_all(agent node_build_enter_action(?,?), agent node_build_exit_action(?,?))
			populate_invariants
			is_expanded := not expand_node_tree
			toggle_expand_tree
			if in_source_status_mode then
				roll_up_to_specialisation_level
			end
		end

	repopulate is
			-- populate the ADL tree control by traversing the tree and modifying it
		do
			gui_tree.recursive_do_all(agent node_rebuild_enter_action(?))
		end

	item_select is
			-- do something when an item is selected
		local
			node_data: ANY
			obj_node: C_COMPLEX_OBJECT
			constraint_ref_node: CONSTRAINT_REF
			an_ordinal: ORDINAL
			s: STRING
		do
			node_data := gui_tree.selected_item.data
			obj_node ?= node_data
			if obj_node /= Void then
				if obj_node.is_addressable then
					gui.ontology_controls.select_term(obj_node.node_id)
				end
			else
				constraint_ref_node ?= node_data
				if constraint_ref_node /= Void then
					gui.ontology_controls.select_constraint(constraint_ref_node.target)
				else
					an_ordinal ?= node_data
					if an_ordinal /= Void then
						if an_ordinal.symbol.terminology_id.is_local then
							gui.ontology_controls.select_term(an_ordinal.symbol.code_string)
						end
					else
						s ?= node_data
						if s /= Void then -- must be a term constraint item
							if ontology.has_term_code(s) then
								gui.ontology_controls.select_term(s)
							end
						end
					end
				end
			end
		end
		
	toggle_expand_tree is
			-- expand or shrink the tree control
		do
			is_expanded := not is_expanded
			if is_expanded then
				gui_tree.recursive_do_all(agent ev_tree_item_expand(?))
				gui.tree_expand_bn.set_text("Collapse All")
			else
				gui_tree.recursive_do_all(agent ev_tree_item_shrink(?))
				gui.tree_expand_bn.set_text("Expand All")
			end
		end

	shrink_to_level(a_type: STRING) is
			-- shrink the tree control up to items of type `a_type'
		do
			gui_tree.recursive_do_all(agent ev_tree_item_shrink_to_level(a_type, ?))
		end

	expand_one_level is
			-- expand the tree control one level further
		do
			create node_list.make(0)
			gui_tree.recursive_do_all(agent ev_tree_item_expand_one_level(?))
			from
				node_list.start
			until
				node_list.off
			loop
				node_list.item.expand
				node_list.forth
			end
		end

	shrink_one_level is
			-- shrink the tree control one level further
		do
			create node_list.make(0)
			gui_tree.recursive_do_all(agent ev_tree_item_collapse_one_level(?))
			from
				node_list.start
			until
				node_list.off
			loop
				node_list.item.collapse
				node_list.forth
			end
		end

	roll_up_to_specialisation_level is
			-- roll the tree up so that nodes whose rolled_up_specialisation_status is
			-- ss_inherited are closed, but nodes with 
		do
			create node_list.make(0)
			gui_tree.recursive_do_all(agent ev_tree_item_roll_up(?))
			from
				node_list.start
			until
				node_list.off
			loop
				node_list.item.collapse
				node_list.forth
			end
		end

feature {NONE} -- Implementation

	gui: MAIN_WINDOW
			-- main window of system

	gui_tree: EV_TREE

	adl_engine: ADL_ENGINE

	tree_iterator: OG_ITERATOR
	
	tree_item_stack: ARRAYED_STACK[EV_TREE_ITEM]
	
	archetype_tree_root_set: BOOLEAN

	node_build_enter_action(an_og_node: OG_ITEM; indent_level: INTEGER) is
		require
			Node_exists: an_og_node /= Void
		local
			a_ti, a_ti_sub, a_ti_sub2: EV_TREE_ITEM
			c_attr: C_ATTRIBUTE
			c_c_o: C_COMPLEX_OBJECT
			c_p_o: C_PRIMITIVE_OBJECT
			a_object_term: C_CODE_PHRASE
			a_constraint_ref: CONSTRAINT_REF
			a_node_ref: ARCHETYPE_INTERNAL_REF
			a_slot: ARCHETYPE_SLOT
			c_dv_ordinal: C_DV_ORDINAL
			c_q: C_DV_QUANTITY
			a_type, s: STRING
			pixmap: EV_PIXMAP
			assumed_flag: BOOLEAN
			arch_const: ARCHETYPE_CONSTRAINT
			pixmap_ext: STRING
			spec_sts: INTEGER
		do
			create s.make(0)
			a_type := an_og_node.content_item.generating_type
			
			-- determine source status of node in archetype text, i.e. inherited, redefined, added etc
			-- and use it to set the kind of pixmap to use
			create pixmap_ext.make(0)
			if in_source_status_mode then
				arch_const ?= an_og_node.content_item
				spec_sts := arch_const.effective_specialisation_status (adl_interface.archetype.specialisation_depth).value
				if spec_sts = ss_inherited or spec_sts = ss_redefined then
					pixmap_ext.append(".")
					pixmap_ext.append(specialisation_status_names.item(spec_sts))
				end
			end
			
			if a_type.is_equal("C_ATTRIBUTE") then
				c_attr ?= an_og_node.content_item
				a_ti := attach_node(c_attribute_string(c_attr), pixmaps.item(c_attribute_pixmap_string(c_attr) + pixmap_ext), an_og_node)
				
			elseif a_type.is_equal("CONSTRAINT_REF") then
				a_constraint_ref ?= an_og_node.content_item
				a_ti := attach_node(constraint_ref_string(a_constraint_ref), pixmaps.item("CONSTRAINT_REF" + pixmap_ext), an_og_node)				

			elseif a_type.is_equal("C_CODE_PHRASE") then
				a_object_term ?= an_og_node.content_item
				if not a_object_term.any_allowed then
					s.append(a_object_term.terminology_id.value)
				end
				a_ti := attach_node(s, pixmaps.item("C_CODE_PHRASE" + pixmap_ext), an_og_node)
				if a_object_term.code_count > 0 then
					from
						a_object_term.code_list.start
					until
						a_object_term.code_list.off						
					loop
						assumed_flag := a_object_term.assumed_value /= Void and then 
							a_object_term.assumed_value.code_string.is_equal(a_object_term.code_list.item)
						create a_ti_sub.make_with_text(object_term_item_string(a_object_term.code_list.item, assumed_flag))
						a_ti_sub.set_data(a_object_term.code_list.item) -- type STRING
						a_ti_sub.set_pixmap(pixmaps.item("TERM" + pixmap_ext))
						a_ti.extend(a_ti_sub)
						a_object_term.code_list.forth						
					end
				end
				
			elseif a_type.is_equal("C_DV_ORDINAL") then
				c_dv_ordinal ?= an_og_node.content_item
				s.append(c_dv_ordinal.rm_type_name)
				a_ti := attach_node(s, pixmaps.item("C_DV_ORDINAL" + pixmap_ext), an_og_node)
				if not c_dv_ordinal.any_allowed then
					from
						c_dv_ordinal.items.start
					until
						c_dv_ordinal.items.off						
					loop
						assumed_flag := c_dv_ordinal.assumed_value /= Void and then 
							c_dv_ordinal.assumed_value.value = c_dv_ordinal.items.item.value
						create a_ti_sub.make_with_text(object_ordinal_item_string(c_dv_ordinal.items.item, assumed_flag))
						a_ti_sub.set_data(c_dv_ordinal.items.item) -- of type ORDINAL
						a_ti_sub.set_pixmap(pixmaps.item("ORDINAL" + pixmap_ext))
						a_ti.extend(a_ti_sub)
						c_dv_ordinal.items.forth						
					end				
				end	
				
			elseif a_type.is_equal("C_DV_QUANTITY") then
				c_q ?= an_og_node.content_item
				if in_technical_mode then
					s.append(c_q.rm_type_name)		
				end
				if c_q.property /= Void then
					s.append(" (" + c_q.property.as_string + ")")
				end
				a_ti := attach_node(s, pixmaps.item("C_DV_QUANTITY" + pixmap_ext), an_og_node)
				if c_q.list /= Void then
					from
						c_q.list.start
					until
						c_q.list.off						
					loop
						create a_ti_sub.make_with_text(object_c_quantity_item_string(c_q.list.item))
						a_ti_sub.set_data(c_q.list.item)
						a_ti_sub.set_pixmap(pixmaps.item("C_QUANTITY_ITEM" + pixmap_ext))
						a_ti.extend(a_ti_sub)
						c_q.list.forth						
					end
				end	
				
				if c_q.assumed_value /= Void then
					create a_ti_sub.make_with_text(object_quantity_string(c_q.assumed_value, True))
					a_ti_sub.set_data(c_q.assumed_value)
					a_ti_sub.set_pixmap(pixmaps.item("C_QUANTITY_ITEM" + pixmap_ext))
					a_ti.extend(a_ti_sub)					
				end
				
			elseif a_type.is_equal("C_PRIMITIVE_OBJECT") then
				c_p_o ?= an_og_node.content_item
				a_ti := attach_node(c_primitive_object_string(c_p_o), pixmaps.item("C_PRIMITIVE_OBJECT" + pixmap_ext), an_og_node)				
				
			elseif a_type.is_equal("C_COMPLEX_OBJECT") then
				c_c_o ?= an_og_node.content_item				
				a_ti := attach_node(c_complex_object_string(c_c_o), pixmaps.item(c_complex_object_pixmap_string(c_c_o) + pixmap_ext), an_og_node)
				
			elseif a_type.is_equal("ARCHETYPE_SLOT") then
				a_slot ?= an_og_node.content_item
				if a_slot.occurrences.lower = 1 then
					pixmap := pixmaps.item("ARCHETYPE_SLOT" + pixmap_ext)
				else
					pixmap := pixmaps.item("ARCHETYPE_SLOT.optional" + pixmap_ext)
				end
				a_ti := attach_node(archetype_slot_string(a_slot), pixmap, an_og_node)
				
				if a_slot.has_includes then
					from
						a_slot.includes.start
					until
						a_slot.includes.off
					loop
						create a_ti_sub2.make_with_text(object_invariant_string(a_slot.includes.item))
						a_ti_sub2.set_pixmap(pixmaps.item("CADL_INCLUDE"))
						a_ti_sub2.set_data(a_slot.includes.item)
						a_ti.extend(a_ti_sub2)
						a_slot.includes.forth
					end
					
					-- FIXME: TO BE IMPLEM - need to add sub nodes for each assertion
				end

				if a_slot.has_excludes then
					from
						a_slot.excludes.start
					until
						a_slot.excludes.off
					loop
						create a_ti_sub2.make_with_text(object_invariant_string(a_slot.excludes.item))
						a_ti_sub2.set_pixmap(pixmaps.item("CADL_EXCLUDE"))
						a_ti_sub2.set_data(a_slot.excludes.item)
						a_ti.extend(a_ti_sub2)
						a_slot.excludes.forth
					end
					
					-- FIXME: TO BE IMPLEM - need to add sub nodes for each assertion
				end

			elseif a_type.is_equal("ARCHETYPE_INTERNAL_REF") then
				a_node_ref ?= an_og_node.content_item
				a_ti := attach_node(archetype_internal_ref_string(a_node_ref), pixmaps.item("ARCHETYPE_INTERNAL_REF" + pixmap_ext), an_og_node)				
			end
		end

	node_build_exit_action(an_og_node: OG_ITEM; indent_level: INTEGER) is
		require
			Node_exists: an_og_node /= Void
		do
			tree_item_stack.remove
		end

	node_rebuild_enter_action(a_tree_node: EV_TREE_NODE) is
		require
			Node_exists: a_tree_node /= Void
		local
			a_ti: EV_TREE_ITEM
			c_o: C_OBJECT
			c_attr: C_ATTRIBUTE
			c_c_o: C_COMPLEX_OBJECT
			c_p_o: C_PRIMITIVE_OBJECT
			c_q: C_DV_QUANTITY
			a_constraint_ref: CONSTRAINT_REF
			a_node_ref: ARCHETYPE_INTERNAL_REF
			a_slot: ARCHETYPE_SLOT
			a_type, s: STRING
			a_object_term: C_CODE_PHRASE
			c_dv_ordinal: C_DV_ORDINAL
			an_ordinal: ORDINAL
			a_node: ANY -- because includes STRING as well as ARCHETYPE_CONSTRAINT
			parent: EV_TREE_NODE
			an_inv: ASSERTION
			assumed_flag: BOOLEAN
			arch_const: ARCHETYPE_CONSTRAINT
			pixmap_ext: STRING
			spec_sts: INTEGER
		do
			create s.make(0)
			a_ti ?= a_tree_node
			if a_ti /= Void then
				a_node := a_ti.data

				if a_node /= Void then
					c_o ?= a_node
					if c_o /= Void then
						if in_technical_mode then		
							a_ti.set_tooltip(c_o.representation.path.as_string)
						else
							a_ti.set_tooltip(ontology.logical_path_for_physical_path(c_o.representation.path.as_string, language))
						end
					end
								
					create pixmap_ext.make(0)
					if in_source_status_mode then
						arch_const ?= a_node
						if arch_const /= Void then
							spec_sts := arch_const.effective_specialisation_status (adl_interface.archetype.specialisation_depth).value
							if spec_sts = ss_inherited or spec_sts = ss_redefined then
								pixmap_ext.append(".")
								pixmap_ext.append(specialisation_status_names.item(spec_sts))
							end
						end
					end
					
					a_type := a_node.generating_type
			
					if a_type.is_equal("C_ATTRIBUTE") then
						c_attr ?= a_node
						a_ti.set_text(c_attribute_string(c_attr))
						a_ti.set_pixmap(pixmaps.item(c_attribute_pixmap_string(c_attr) + pixmap_ext))				
				
					elseif a_type.is_equal("STRING") then
						s ?= a_node
						parent ?= a_ti.parent
						if parent /= Void then
							a_object_term ?= parent.data
							if a_object_term /= Void then
								assumed_flag := a_object_term.assumed_value /= Void and then 
									a_object_term.assumed_value.code_string.is_equal(s)
								a_ti.set_text(object_term_item_string(s, assumed_flag))
								create pixmap_ext.make(0)					
								if in_source_status_mode then
									spec_sts := a_object_term.effective_specialisation_status (adl_interface.archetype.specialisation_depth).value
									if spec_sts = ss_inherited or spec_sts = ss_redefined then
										pixmap_ext.append(".")
										pixmap_ext.append(specialisation_status_names.item(spec_sts))
									end
								end
								a_ti.set_pixmap(pixmaps.item("TERM" + pixmap_ext))				
							end
						end
				
					elseif a_type.is_equal("CONSTRAINT_REF") then
						a_constraint_ref ?= a_node
						a_ti.set_text(constraint_ref_string(a_constraint_ref))
						a_ti.set_pixmap(pixmaps.item("CONSTRAINT_REF" + pixmap_ext))				
				
					elseif a_type.is_equal("C_CODE_PHRASE") then
						a_ti.set_pixmap(pixmaps.item("C_CODE_PHRASE" + pixmap_ext))				
						
					elseif a_type.is_equal("C_DV_ORDINAL") then
						a_ti.set_pixmap(pixmaps.item("C_DV_ORDINAL" + pixmap_ext))				
								
					elseif a_type.is_equal("ORDINAL") then
						an_ordinal ?= a_node
						parent ?= a_ti.parent
						c_dv_ordinal ?= parent.data
						assumed_flag := c_dv_ordinal.assumed_value /= Void and then c_dv_ordinal.assumed_value.value = an_ordinal.value

						a_ti.set_text(object_ordinal_item_string(an_ordinal, assumed_flag))
						create pixmap_ext.make(0)					
						if in_source_status_mode then
							spec_sts := c_dv_ordinal.effective_specialisation_status (adl_interface.archetype.specialisation_depth).value
							if spec_sts = ss_inherited or spec_sts = ss_redefined then
								pixmap_ext.append(".")
								pixmap_ext.append(specialisation_status_names.item(spec_sts))
							end
						end
						a_ti.set_pixmap(pixmaps.item("ORDINAL" + pixmap_ext))				
						
					elseif a_type.is_equal("C_DV_QUANTITY") then
						c_q ?= a_node
						create s.make(0)
						if in_technical_mode then
							s.append(c_q.rm_type_name)		
						end
						if c_q.property /= Void then
							s.append(" (" + c_q.property.as_string + ")")
						end
						a_ti.set_text(s)				
						a_ti.set_pixmap(pixmaps.item("C_DV_QUANTITY" + pixmap_ext))				
				
					elseif a_type.is_equal("C_QUANTITY_ITEM") then
						parent ?= a_ti.parent
						if parent /= Void then
							c_q ?= parent.data
							if c_q /= Void then
								create pixmap_ext.make(0)					
								if in_source_status_mode then
									spec_sts := c_q.effective_specialisation_status (adl_interface.archetype.specialisation_depth).value
									if spec_sts = ss_inherited or spec_sts = ss_redefined then
										pixmap_ext.append(".")
										pixmap_ext.append(specialisation_status_names.item(spec_sts))
									end
								end
							end
						end
						a_ti.set_pixmap(pixmaps.item("C_QUANTITY_ITEM" + pixmap_ext))				

					elseif a_type.is_equal("C_PRIMITIVE_OBJECT") then
						c_p_o ?= a_node
						a_ti.set_text(c_primitive_object_string(c_p_o))				
						a_ti.set_pixmap(pixmaps.item("C_PRIMITIVE_OBJECT" + pixmap_ext))				
				
					elseif a_type.is_equal("C_COMPLEX_OBJECT") then
						c_c_o ?= a_node				
						a_ti.set_text(c_complex_object_string(c_c_o))
						a_ti.set_pixmap(pixmaps.item(c_complex_object_pixmap_string(c_c_o) + pixmap_ext))				
				
					elseif a_type.is_equal("ARCHETYPE_INTERNAL_REF") then
						a_node_ref ?= a_node
						a_ti.set_text(archetype_internal_ref_string(a_node_ref))	
						a_ti.set_pixmap(pixmaps.item("ARCHETYPE_INTERNAL_REF" + pixmap_ext))				
						
					elseif a_type.is_equal("ARCHETYPE_SLOT") then
						a_slot ?= a_node
						a_ti.set_text(archetype_slot_string(a_slot))	
						a_ti.set_pixmap(pixmaps.item("ARCHETYPE_SLOT" + pixmap_ext))				
						
					elseif a_type.is_equal("ASSERTION") then
						an_inv ?= a_node
						a_ti.set_text(object_invariant_string(an_inv))				
					end				
				end		
			else
				-- must be an invariant node: FIXME
			end
		end

	attach_node(str: STRING; pixmap: EV_PIXMAP; an_og_node: OG_ITEM): EV_TREE_ITEM is
			-- attach a node into the tree
		do
			create Result.make_with_text(str)
			Result.set_data(an_og_node.content_item)
			Result.set_pixmap(pixmap)
			
			if in_technical_mode then		
				Result.set_tooltip(an_og_node.path.as_string)
			else
				Result.set_tooltip(ontology.logical_path_for_physical_path(an_og_node.path.as_string, language))
			end
			
			if not archetype_tree_root_set then
				gui_tree.extend(Result)
				archetype_tree_root_set := True
			else
				tree_item_stack.item.extend(Result)
			end
			tree_item_stack.extend(Result)
		end
		
	ev_tree_item_expand(an_ev_tree_node: EV_TREE_NODE) is
			-- 
		do
			if an_ev_tree_node.is_expandable then -- and node_data.is_addressable then
				an_ev_tree_node.expand
			end
		end

	ev_tree_item_shrink(an_ev_tree_node: EV_TREE_NODE) is
			-- 
		do
			if an_ev_tree_node.is_expandable then -- and node_data.is_addressable then
				an_ev_tree_node.collapse
			end
		end

	ev_tree_item_shrink_to_level(a_type: STRING; an_ev_tree_node: EV_TREE_NODE) is
			-- 
		local
			node_data: ANY
			node_type: STRING
			an_obj_node: C_COMPLEX_OBJECT
		do
			node_data ?= an_ev_tree_node.data
			if node_data /= Void then
				node_type := node_data.generating_type
				if node_type.is_equal("C_ATTRIBUTE") and an_ev_tree_node.is_expandable then
					an_ev_tree_node.expand
				elseif an_ev_tree_node.is_expandable then
					an_obj_node ?= an_ev_tree_node
					if a_type.is_equal("addressable") then
						if an_obj_node /= Void and then an_obj_node.is_addressable then
							an_ev_tree_node.expand
						else
							an_ev_tree_node.collapse
						end
					elseif a_type.is_equal("anonymous") then
						if an_obj_node /= Void then
							an_ev_tree_node.expand
						else
							an_ev_tree_node.collapse
						end
					elseif a_type.is_equal("simple") then
						an_ev_tree_node.expand
					end
				end
			end
		end
		
	ev_tree_item_expand_one_level(an_ev_tree_node: EV_TREE_NODE) is
			-- 
		do
			if an_ev_tree_node.is_expanded then
				from
					an_ev_tree_node.start
				until
					an_ev_tree_node.off
				loop
					if an_ev_tree_node.item.is_expandable and then not an_ev_tree_node.item.is_expanded then
						node_list.extend(an_ev_tree_node.item)
					end
					an_ev_tree_node.forth
				end
			elseif an_ev_tree_node = gui_tree.item then
				node_list.extend(an_ev_tree_node)
			end
		end

	ev_tree_item_collapse_one_level(an_ev_tree_node: EV_TREE_NODE) is
			-- 
		do
			if an_ev_tree_node.is_expanded then
				from
					an_ev_tree_node.start
				until
					an_ev_tree_node.off or else (an_ev_tree_node.item.is_expandable and then an_ev_tree_node.item.is_expanded)
				loop
					an_ev_tree_node.forth
				end		
				if an_ev_tree_node.off then -- didn't find any expanded children
					node_list.extend(an_ev_tree_node)
				end
			end
		end

	ev_tree_item_roll_up(an_ev_tree_node: EV_TREE_NODE) is
			-- close nodes that have rolled_up_specialisation_status = ss_inherited; open others
		local
			arch_cons: ARCHETYPE_CONSTRAINT
		do
			if an_ev_tree_node.is_expandable then
				arch_cons ?= an_ev_tree_node.data
				if arch_cons /= Void and arch_cons.rolled_up_specialisation_status (adl_interface.archetype.specialisation_depth).value = ss_inherited then
					an_ev_tree_node.collapse
				else				
					an_ev_tree_node.expand
				end
			end
		end
		
	node_list: ARRAYED_LIST[EV_TREE_NODE]
	
	c_attribute_string(c_attr: C_ATTRIBUTE): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			-- Result.append(" [" + c_attr.existence.as_occurrences_string + "] ")
			-- if c_attr.is_multiple then
			-- 	Result.append(" [" + c_attr.cardinality.as_string + "] ")			
			-- end
			Result.append(c_attr.rm_attribute_name)
			if c_attr.any_allowed then
				Result.append(" matches {*}")
			end		
		end
	
	c_attribute_pixmap_string(c_attr: C_ATTRIBUTE): STRING is
			-- string name of pixmap for attribute c_attr
		do
			create Result.make(0)
			if c_attr.is_multiple then
				if c_attr.cardinality.interval.lower > 0 then
					Result.append("C_ATTRIBUTE.multiple")
				else
					Result.append("C_ATTRIBUTE.multiple.optional")
				end
			else
				if c_attr.existence.lower = 1 then
					Result.append("C_ATTRIBUTE")
				else
					Result.append("C_ATTRIBUTE.optional")
				end
			end
		end

	c_complex_object_string(a_node: C_COMPLEX_OBJECT): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			-- if not a_node.is_occurrences_default then
				-- Result.append(" [" + a_node.occurrences.as_occurrences_string + "] ")
			-- end
			if a_node.is_addressable then
				if in_technical_mode then
					Result.append(a_node.rm_type_name)
				end
				Result.append(" " + ontology.term_definition(language, a_node.node_id).item("text"))
				if in_technical_mode then
					Result.append(" [" + a_node.node_id + "]")
				end
			else -- put type even when not in technical mode
				Result.append(a_node.rm_type_name)
			end
			if a_node.any_allowed then
				Result.append(" = *")
			end
		end

	c_complex_object_pixmap_string(c_c_o: C_COMPLEX_OBJECT): STRING is
		do
			create Result.make(0)
			if c_c_o.occurrences.lower > 0 then
				if c_c_o.occurrences.upper = 1 then
					Result.append("C_COMPLEX_OBJECT")
				else
					Result.append("C_COMPLEX_OBJECT.multiple")
				end
			else
				if c_c_o.occurrences.upper = 1 then
					Result.append("C_COMPLEX_OBJECT.optional")
				else
					Result.append("C_COMPLEX_OBJECT.multiple.optional")
				end
			end
		end

	archetype_slot_string(a_node: ARCHETYPE_SLOT): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			-- if not a_node.is_occurrences_default then
				-- Result.append(" [" + a_node.occurrences.as_occurrences_string + "] ")
			-- end
			--if in_technical_mode then
				Result.append(a_node.rm_type_name)
			--end
			if a_node.is_addressable then
				Result.append(" " + ontology.term_definition(language, a_node.node_id).item("text"))
			end
			if in_technical_mode then
				if a_node.is_addressable then
					Result.append(" [" + a_node.node_id + "]")
				end
			end
			if a_node.any_allowed then
				Result.append(" = *")
			end
		end

	c_primitive_object_string(c_p_o: C_PRIMITIVE_OBJECT): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			if in_technical_mode then		
				Result.append(c_p_o.rm_type_name)
			end
			if not (c_p_o.occurrences.lower = 1 and c_p_o.occurrences.upper = 1) then
				Result.append(" [" + c_p_o.occurrences.as_occurrences_string + "]")
			end
			Result.append(" " + c_p_o.item.as_string)
		end

	archetype_internal_ref_string(a_node: ARCHETYPE_INTERNAL_REF): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			if not a_node.use_target_occurrences then
				Result.append(" [" + a_node.occurrences.as_occurrences_string + "] ")
			end
			if in_technical_mode then		
				Result.append("use " + a_node.rm_type_name + " " + a_node.target_path)
			else
				Result.append("use " + ontology.logical_path_for_physical_path(a_node.target_path, language))
			end
		end

	object_term_item_string(code: STRING; assumed_flag: BOOLEAN): STRING is
			-- generate string form of node or object for use in tree node
		do		
			create Result.make(0)
			if ontology.term_codes.has(code) then
				Result.append(" " + ontology.term_definition(language, code).item("text"))
			end
			Result.append(" -- " + code)
			if assumed_flag then
				Result.append(" (Assumed)")
			end
		end
	
	constraint_ref_string(a_constraint_ref: CONSTRAINT_REF): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			Result.append(" " + ontology.constraint_definition(language, a_constraint_ref.target).item("text"))	
			if in_technical_mode then
				Result.append(" -> " + a_constraint_ref.target)			
			end
		end
		
	object_ordinal_item_string(an_ordinal: ORDINAL; assumed_flag: BOOLEAN): STRING is
			-- generate string form of node or object for use in tree node
		local
			code: STRING
		do
			create Result.make(0)
			code := an_ordinal.symbol.code_string
			Result.append(an_ordinal.value.out + an_ordinal.separator.out)
			if ontology.term_codes.has(code) then
				Result.append(" " + ontology.term_definition(language, code).item("text"))
			end
			if in_technical_mode then
				Result.append(" -- " + code)
			end
			if assumed_flag then
				Result.append(" (Assumed)")
			end
		end
		
	object_quantity_string(a_q: QUANTITY; assumed_flag: BOOLEAN): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			Result.append(a_q.magnitude.out)
			Result.append(" " + a_q.units)
			if assumed_flag then
				Result.append(" (Assumed)")
			end
		end
		
	object_c_quantity_item_string(a_object_c_quantity: C_QUANTITY_ITEM): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			if a_object_c_quantity.units /= Void then
				Result.append(a_object_c_quantity.units)
			end
			if a_object_c_quantity.magnitude /= Void then
				Result.append(": " + a_object_c_quantity.magnitude.as_string)
			end
		end
		
	object_invariant_string(an_inv: ASSERTION): STRING is
			-- generate string form of node or object for use in tree node
		do
			create Result.make(0)
			Result := an_inv.as_string
			if not in_technical_mode then
				Result := ontology.substitute_codes(Result, language)
			end
		end

	populate_invariants is
			-- populate invariants of archetype into bottom nodes of tree
		local
			a_ti_sub, a_ti_sub2: EV_TREE_ITEM
			invariants: ARRAYED_LIST[ASSERTION]
			s: STRING
		do
			if adl_engine.archetype.has_invariants then
				invariants := adl_engine.archetype.invariants
				create a_ti_sub.make_with_text("invariants:")
				a_ti_sub.set_pixmap(pixmaps.item("CADL_INVARIANT"))
				gui_tree.extend(a_ti_sub)
					
				from
					invariants.start
				until
					invariants.off
				loop
					create s.make(0)
					if invariants.item.tag /= Void then
						s.append (invariants.item.tag + ": ")
					end
					s.append(object_invariant_string(invariants.item))
					create a_ti_sub2.make_with_text(s)
					a_ti_sub2.set_pixmap(pixmaps.item("CADL_INVARIANT_ITEM"))
					a_ti_sub2.set_data(invariants.item)
					a_ti_sub.extend(a_ti_sub2)
					invariants.forth
				end
					
				-- FIXME: TO BE IMPLEM - need to add sub nodes for each assertion
			end
		end		
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
--| The Original Code is adl_node_map_control.e.
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