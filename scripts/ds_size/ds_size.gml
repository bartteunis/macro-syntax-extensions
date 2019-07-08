// ds_size(index, type)
switch(argument1) {
	case ds_type_list: return ds_list_size(argument0); break;
	case ds_type_map: return ds_map_size(argument0); break;
	case ds_type_grid: return ds_grid_width(argument0) * ds_grid_height(argument0); break;
	case ds_type_queue: return ds_queue_size(argument0); break;
	case ds_type_priority: return ds_priority_size(argument0); break;
	case ds_type_array: return array_length_1d(argument0); break;
}