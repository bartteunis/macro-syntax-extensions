/// @desc Extended stuff using macros
gml_pragma("global","init_methods()");

//	Convenient "typedefs"

#macro	list	ds_list_create
#macro	map		ds_map_create
#macro	grid	ds_grid_create
#macro	queue	ds_queue_create
#macro	stack	ds_stack_create

#macro	color	make_color_rgb

#macro	log		show_debug_message

//	Convenient "typedefs"

// -----------------------------

//	Foreach support

#macro foreach			for(var ds = 
#macro as_list			, ds_type = ds_type_list, i = ds_first_index(ds,ds_type), arr_tmp = [i,ds[|i]],
#macro as_map			, ds_type = ds_type_map, i = ds_first_index(ds,ds_type), arr_tmp = [i,ds[?i]],
#macro as_grid			, ds_type = ds_type_grid, i = ds_first_index(ds,ds_type), arr_tmp = [i,ds[# 0, 0]],
#macro as_array			, ds_type = ds_type_array, i = ds_first_index(ds,ds_type), arr_tmp = [i,ds[i]],
#macro loop				= arr_tmp;ds_condition(arr_tmp,ds,ds_type);ds_next(ds,ds_type,arr_tmp))
#macro ds_type_array	128

enum kvp {				// Key-value pair indices
	key   = 0,
	value = 1,
};

//	Foreach support

//	----------------------------

//	Prototype

#macro	lw_object = obj;
#macro	set obj[?
#macro	to ] = 
#macro	lwo var obj = ds_map_create();

#macro	prototype = ins; with(ins) 
#macro	def var ins = instance_create_depth(x,y,0,obj_object);

//	Prototype

//	----------------------------

//	Method extensions

#macro	functions		var func_id = 0; var args = global.args;
#macro	end_functions	;
#macro	func			func_id++;
#macro	as				= func_id; if (global.temp_value == func_id) 
#macro	params			var i = -1; var meh 
#macro	param			= (i < 0) ? (i++) : (args[i++]); var 
#macro	end_params		= (i < 0) ? (i++) : (args[i++]);
#macro	ret				global.return_value = 
#macro	method_event	0

global.return_value = undefined;
global.multiple_object = noone;
global.temp_value = -1;

//	Method extensions

//	----------------------------


//	Custom properties

#macro uses	 
#macro props prop = ds_map_create(); prop_index = 0;
#macro equals = prop_index; prop[?prop_index++] = 
#macro no_props	prop_index

//	----------------------------

//	L-value trickery

#macro nearest		var _id = instance_nearest(x, y, all); (_id)
#macro multiple_obj	global.multiple_object
#macro multiple		with(global.multiple_object) id
#macro object		with(object_index) id
#macro similar		with(all) if 

//	--------------------------------