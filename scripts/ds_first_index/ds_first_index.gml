/// ds_first_index(ds_index,ds_type)
switch(argument1) {
	case ds_type_list:
	case ds_type_grid:
	case ds_type_array:
		return 0;
		break;
	case ds_type_map:
		return ds_map_find_first(argument0);
		break;
}