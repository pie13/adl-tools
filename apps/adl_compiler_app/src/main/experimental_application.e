note
	description: "Summary description for {EXPERIMENTAL_APPLICATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EXPERIMENTAL_APPLICATION

create
--	make
	dummy

feature {NONE}
	dummy
	do

	end

--feature {NONE} -- Initialization

--	make
--			-- Initialization for `Current'.
--		local
--			archetype_names_in_repo:ARRAY[STRING]
--		do
--			app_root.set_error_db_directory_location ("c:\tmp\error_db")
--			app_root.set_rm_schema_directory_location ("c:\tmp\rm_schemas")
--			configure_archetype_repository

--			archetype_names_in_repo := archetype_names
--			io.put_string ("Using archetype: " + archetype_names_in_repo[3])
--			compile_and_test_visit_archetype (archetype_names_in_repo[3]).do_nothing
--		end

--feature		--Access

--	logger: LOGGER
--	once
--		create Result.make
--	end

--	cpp_visitor: POINTER

--	save_cpp_visitor (p_cpp_visitor: POINTER)
--	do
--		cpp_visitor := p_cpp_visitor
--	end

--	app_root: APP_ROOT
--	once
--		create RESULT
--	end

--	application: APPLICATION

--	my_arr: MY_ARRAY[INTEGER]

--	my_ret_type: ARRAY[STRING]
--	do
--		create Result.make(0,10)
--	end

--	my_str_attr: STRING
--	do
--		Result := "sample value"
--	end

--	archetype_names: ARRAY[STRING]
--		-- get an array of archetype names in the repository
--		require
--			rm_schema_dir_initialized: app_root.rm_schema_directory_location /= Void
--			error_db_dir_initialized: app_root.error_db_directory_location /= Void
--		local
--			names_arr: ARRAY[STRING]
--			archetype_index: INTEGER_32
--		do
--			configure_archetype_repository
--			create names_arr.make (0, app_root.current_arch_cat.archetype_index.count - 1)
--			archetype_index := 0
--			FROM app_root.current_arch_cat.archetype_index.start
--			until
--				app_root.current_arch_cat.archetype_index.after
--			loop
--				names_arr.put (app_root.current_arch_cat.archetype_index.key_for_iteration, archetype_index)
--				archetype_index := archetype_index + 1
--				app_root.current_arch_cat.archetype_index.forth
--			end
--			Result := names_arr
--		end

--feature --process archetypes

--	compile_archetype (p_archetype_name:STRING)
--	--compile the archetype and save flattened form into a variable
--	require
--		rm_schema_dir_initialized: app_root.rm_schema_directory_location /= Void
--		error_db_dir_initialized: app_root.error_db_directory_location /= Void
--		cpp_object_initialized: cpp_visitor /= Void
--	local
--		flattened_archetype: FLAT_ARCHETYPE --TODO: will return this in the next version of this function, only for debugging purposes for now
--		bosphorus_visitor: BOSPHORUS_VISITOR
--		visitor_iterator: C_VISITOR_ITERATOR
--	do
--		configure_archetype_repository
--		app_root.current_arch_cat.set_selected_item (app_root.current_arch_cat.archetype_index.item (p_archetype_name))
--		app_root.archetype_compiler.build_lineage (app_root.current_arch_cat.selected_archetype, 0) --TODO: TALK TO THOMAS BEALE: WHAT IS THE RIGHT VALUE FOR DEPTH HERE?
--		if app_root.current_arch_cat.selected_archetype.is_valid then
--			flattened_archetype := app_root.current_arch_cat.selected_archetype.flat_archetype
--			if flattened_archetype /= Void then
--				create bosphorus_visitor
--				bosphorus_visitor.set_logger (logger)
--				bosphorus_visitor.set_cpp_visitor (cpp_visitor)
--				create visitor_iterator.make (flattened_archetype.definition, bosphorus_visitor)
--				visitor_iterator.do_all
--				--bosphorus_visitor.initialise (flattened_archetype.ontology)
--				--logger.log ("now calling visitor")
--				--flattened_archetype.definition.enter_subtree (bosphorus_visitor, 0)
--			end
--			io.put_string("Compiled archetype: " + p_archetype_name + "%N");
--			io.put_string("ADL version: " + flattened_archetype.adl_version + "%N")
--		else
--			io.put_string ("Archetype: " + p_archetype_name + " is not valid%N")
--		end
--	end

--	initialize
--	require
--		rm_schema_dir_initialized: app_root.rm_schema_directory_location /= Void
--		error_db_dir_initialized: app_root.error_db_directory_location /= Void
--	do
--		configure_archetype_repository
--	end

--	compile_and_test_visit_archetype (p_archetype_name:STRING):CCOMPLEXOBJECT_WRAPPER_GEN
--	--compile the archetype and save flattened form into a variable	
----	local
----		flattened_archetype: FLAT_ARCHETYPE
----		visitor_iterator: C_VISITOR_ITERATOR
----		test_visitor: BOSPHORUS_PB_VISITOR
----		root_obj: CCOMPLEXOBJECT_WRAPPER_GEN
--	do
----		io.put_string ("compiling and using archetype: " + p_archetype_name + "%N")
----		app_root.arch_dir.set_selected_item (app_root.arch_dir.archetype_index.item (p_archetype_name))
----		app_root.archetype_compiler.build_lineage (app_root.arch_dir.selected_archetype)
----		if app_root.arch_dir.selected_archetype.is_valid then
----			flattened_archetype := app_root.arch_dir.selected_archetype.flat_archetype
----			if flattened_archetype /= Void then
----				create test_visitor.make
----				--test_visitor.initialise (flattened_archetype.ontology)
----				create visitor_iterator.make (flattened_archetype.definition, test_visitor)
----				visitor_iterator.do_all
----				--io.put_string (test_visitor.root_tag)
----			end
----			io.put_string ("done with visitor%N")
----			root_obj := test_visitor.root
----			if attached root_obj.get_singleatributes (root_obj.get_singleatributes_lower_index) as satr then
----				io.put_string (satr.get_rmattributename + "%N")
----			end
----			if attached root_obj.get_multipleatributes (root_obj.get_multipleatributes_lower_index) as matr then
----				io.put_string (matr.get_rmattributename + "%N")
----			end

----		else
----			io.put_string ("Archetype: " + p_archetype_name + " is not valid%N")
----		end
--	end

--	perform_parsing
--	local
--		archetype_key: STRING
--		flattend_archetype : FLAT_ARCHETYPE
--		archetype_list: DS_HASH_TABLE [ARCH_CAT_ARCHETYPE, STRING]
--	do
--		app_root.initialise
--		print("app_root init call passed")
--		if app_root.initialised then
--			print("app root inited %N")
--			set_repository_profile
--			print ("Populating repository " + app_root.repository_profiles.current_profile.work_repository + "...")
--			app_root.use_current_profile (false)
--			print ("complete%N")
----			app_root.archetype_compiler.set_visual_update_action (agent build_ui_update)
--			create archetype_list.make (app_root.current_arch_cat.archetype_index.count)
--			from app_root.current_arch_cat.archetype_index.start until app_root.current_arch_cat.archetype_index.off loop
--				archetype_list.force (app_root.current_arch_cat.archetype_index.item (app_root.current_arch_cat.archetype_index.key_for_iteration), app_root.current_arch_cat.archetype_index.key_for_iteration)
--				app_root.current_arch_cat.archetype_index.forth
--			end
--			--from app_root.arch_dir.archetype_index.start until app_root.arch_dir.archetype_index.off loop
--			from archetype_list.start until archetype_list.off loop

--					archetype_key := archetype_list.key_for_iteration
--					print(archetype_key.to_string_8 + "%N")
--					--set this one selected
--					app_root.current_arch_cat.set_selected_item (app_root.current_arch_cat.archetype_index.item (archetype_key))
--					--build selected one					
--					app_root.archetype_compiler.build_lineage (app_root.current_arch_cat.selected_archetype, 0) --TODO: TALK TO THOMAS BEALE, ABOUT THIS DEPTH PARAMETER, WHAT IS THE RIGHT VALUE HERE?
--					if app_root.current_arch_cat.selected_archetype.is_valid then
--						flattend_archetype := app_root.current_arch_cat.selected_archetype.flat_archetype
--					else
--						flattend_archetype := Void
--					end
--					archetype_list.forth
--			end

--		else
--			print("app root not inited")
--		end

--	end

----	build_ui_update (ara: ARCH_CAT_ARCHETYPE)
----			-- Update UI with progress on build.
----		do
----			print (app_root.archetype_compiler.status)
----		end



--	set_repository_profile
--			--assign one of the available profiles as the repository profile to use
--			local
--				repository_profile_conf: REPOSITORY_PROFILE_CONFIG
--				new_profile: STRING
--			do
--				repository_profile_conf := app_root.repository_profiles
--				print("repo profiles count: ")
--				io.put_integer (repository_profile_conf.count)
--				from repository_profile_conf.start until repository_profile_conf.off loop
--							print(repository_profile_conf.key_for_iteration + "%N")
--							repository_profile_conf.forth
--				end
----				if app_root.repository_profiles.current_profile.is_empty then
----					repository_profile.start
----					new_prof := repository_profile.key_for_iteration
----				else
----					new_prof := app_root.repository_profiles.current_profile
----				end
--				app_root.set_current_profile (app_root.repository_profiles.current_profile_name)
--			end

--feature --configuration

--	set_error_db_dir_location (p_path:STRING)
--	do
--		app_root.set_error_db_directory_location (p_path)
--	end

--	set_rm_schema_dir_location (p_path:STRING)
--	do
--		app_root.set_rm_schema_directory_location (p_path)
--	end

--	configure_archetype_repository
--	require
--		rm_schema_dir_initialized: app_root.rm_schema_directory_location /= Void
--		error_db_dir_initialized: app_root.error_db_directory_location /= Void
--	do
--		app_root.initialise
--		set_repository_profile
--		app_root.use_current_profile (false)
--	end



end
