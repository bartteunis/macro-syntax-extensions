/// loop_condition(iterator,ds_index,ds_type)
switch(argument2) {
	case ds_type_map: 
		return (!is_undefined(argument0[kvp.key]));
	//case ds_type_grid:
		
	default:
		return (argument0[kvp.key] < ds_size(argument1,argument2));
}