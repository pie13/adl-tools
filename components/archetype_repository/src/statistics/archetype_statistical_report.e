note
	component:   "openEHR ADL Tools"
	description: "Statistical report data container for archetypes."
	keywords:    "statistics, archetype"
	author:      "Thomas Beale <thomas.beale@oceaninformatics.com>"
	support:     "http://www.openehr.org/issues/browse/AWB"
	copyright:   "Copyright (c) 2011 Ocean Informatics Pty Ltd <http://www.oceaninfomatics.com>"
	license:     "Apache 2.0 License <http://www.apache.org/licenses/LICENSE-2.0.html>"

class ARCHETYPE_STATISTICAL_REPORT

inherit
	ARCHETYPE_STATISTICAL_DEFINITIONS

create
	make

feature -- Initialisation

	make (a_bmm_schema: BMM_SCHEMA)
		do
			bmm_schema :=  a_bmm_schema
			Archetype_metric_names.do_all (
				agent (metric_name: STRING)
					do
						archetype_metrics.put (create {STATISTICAL_DATUM}.make (metric_name), metric_name)
					end
			)

			-- set up the RM class breakdown tables according to major base class groups, found in BMM_SCHEMA. If
			-- no 'LOCATABLE' or equivalent class declared, create a default table. Additionally create a
			-- primitive types table (for nodes that archetype RM types like String, Integer etc), since this can
			-- always be detected
			if attached bmm_schema.archetype_parent_class as apc then
				rm_grouped_class_table.put (default_rm_class_table, apc)
			else
				rm_grouped_class_table.put (default_rm_class_table, "Any")
			end
			if attached bmm_schema.archetype_data_value_parent_class as dvpc then
				rm_grouped_class_table.put (create {HASH_TABLE [RM_CLASS_STATISTICS, STRING]}.make(0), dvpc)
			end
			rm_grouped_class_table.put (create {HASH_TABLE [RM_CLASS_STATISTICS, STRING]}.make(0), Rm_primitive_group_key)
		end

feature -- Access

	archetype_metrics: HASH_TABLE [STATISTICAL_DATUM, STRING]
			-- other archetype metrics (not relating to RM), keyed by metric name
		attribute
			create Result.make (0)
		end

	rm_grouped_class_table: HASH_TABLE [HASH_TABLE [RM_CLASS_STATISTICS, STRING], STRING]
			-- table of grouped stats of all RM classes, keyed by class name, with
			-- each group keyed by a base class name, e.g. 'LOCATABLE', 'DATA_VALUE', 'Any' etc
		attribute
			create Result.make (0)
		end

	bmm_schema: BMM_SCHEMA

feature -- Modification

	add_rm_class_stats (a_stat_accum: RM_CLASS_STATISTICS)
		local
			rm_class_table: HASH_TABLE [RM_CLASS_STATISTICS, STRING]
		do
			if bmm_schema.is_primitive_type (a_stat_accum.rm_class_name) and then attached rm_grouped_class_table.item (Rm_primitive_group_key) as rgct_prim then
				rm_class_table := rgct_prim
			elseif attached bmm_schema.archetype_parent_class as apc and then bmm_schema.is_descendant_of (a_stat_accum.rm_class_name, apc) and then
				attached rm_grouped_class_table.item (apc) as rgct_apc then
				rm_class_table := rgct_apc
			elseif attached bmm_schema.archetype_data_value_parent_class as dvpc and then bmm_schema.is_descendant_of (a_stat_accum.rm_class_name, dvpc) and then
				attached rm_grouped_class_table.item (dvpc) as rgct_dvpc then
				rm_class_table := rgct_dvpc
			else
				rm_class_table := default_rm_class_table
			end

			if rm_class_table.has (a_stat_accum.rm_class_name) and then attached rm_class_table.item (a_stat_accum.rm_class_name) as rct then
				rct.merge (a_stat_accum)
			else
				rm_class_table.put (a_stat_accum, a_stat_accum.rm_class_name)
			end
		end

	increment_archetype_metric (a_val: INTEGER; a_metric_name: STRING)
			-- add `a_val' to `archetype_metrics'
		require
			archetype_metrics.has (a_metric_name)
		do
			archetype_metrics.item (a_metric_name).update (a_val)
		end

	merge (other: like Current)
			-- merge another stats report into this one, creating aggregated statistics
		require
			other.bmm_schema = bmm_schema
		local
			merged_class_stats: RM_CLASS_STATISTICS
		do
			-- archetype metrics table
			across other.archetype_metrics as metrics_csr loop
				archetype_metrics.item (metrics_csr.key).merge (metrics_csr.item)
			end

			-- rm class table
			across other.rm_grouped_class_table as other_grouped_table_csr loop
				if rm_grouped_class_table.has (other_grouped_table_csr.key) and then attached rm_grouped_class_table.item (other_grouped_table_csr.key) as rm_class_table then
					across other_grouped_table_csr.item as other_table_csr loop
						if rm_class_table.has (other_table_csr.key) then
							merged_class_stats := rm_class_table.item (other_table_csr.key).deep_twin
							merged_class_stats.merge (other_table_csr.item)
							rm_class_table.force (merged_class_stats, other_table_csr.key)
						else
							rm_class_table.put (other_table_csr.item.deep_twin, other_table_csr.key)
						end
					end
				else
					rm_grouped_class_table.put (other_grouped_table_csr.item.deep_twin, other_grouped_table_csr.key)
				end
			end
		end

feature -- Copying

	duplicate: like Current
			-- safe duplicate with full copies of states, but reference copy of `bmm_schema'
		do
			create Result.make (bmm_schema)
			Result.archetype_metrics.copy (archetype_metrics.deep_twin)
			Result.rm_grouped_class_table.copy (rm_grouped_class_table.deep_twin)
		end

feature {NONE} -- Implementation

	default_rm_class_table: HASH_TABLE [RM_CLASS_STATISTICS, STRING]
		attribute
			create Result.make (0)
		end

end


