// ds_next(ds,type,index)
switch(argument1) {
	case ds_type_list:
		argument2[@kvp.key]++;
		argument2[@kvp.value] = argument0[|(argument2[kvp.key])];
		break;
	case ds_type_map:
		argument2[@kvp.key] = ds_map_find_next(argument0,argument2[kvp.key]);
		argument2[@kvp.value] = argument0[?argument2[kvp.key]];
		break;
	case ds_type_grid:
		argument2[@kvp.key]++;
		argument2[@kvp.value] = argument0[# (argument2[kvp.key]) div ds_grid_width(argument0), (argument2[kvp.key]) mod ds_grid_width(argument0)];
		break;
	case ds_type_array:
		argument2[@kvp.key]++;
		argument2[@kvp.value] = argument0[(argument2[kvp.key])];
		break;
}