/// @desc Extended stuff using macros
gml_pragma("global","init_methods()");

#region Convenient "typedefs"

	#macro	list	ds_list_create
	#macro	map		ds_map_create
	#macro	grid	ds_grid_create
	#macro	queue	ds_queue_create
	#macro	stack	ds_stack_create

	//#macro	vertex_format
	//#macro	vertex 

	#macro	color	make_color_rgb

	#macro	log		show_debug_message

	#macro	phy_debug_render_all phy_debug_render_aabb | phy_debug_render_collision_pairs | phy_debug_render_coms | phy_debug_render_core_shapes | phy_debug_render_joints | phy_debug_render_obb | phy_debug_render_shapes

#endregion Convenient "typedefs"

// -----------------------------

#region Foreach support

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

#endregion Foreach support

//	----------------------------

#region Prototype

	#macro	lw_object = obj;
	#macro	set obj[?
	#macro	to ] = 
	#macro	lwo var obj = ds_map_create();

	#macro	prototype = ins; with(ins) 
	#macro	def var ins = instance_create_depth(x,y,0,obj_object);

#endregion Prototype

//	----------------------------

#region Method extensions

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

#endregion Method extensions

//	----------------------------


#region Custom properties

	#macro uses	 
	#macro props prop = ds_map_create(); prop_index = 0;
	#macro equals = prop_index; prop[?prop_index++] = 
	#macro no_props	prop_index

#endregion Custom properties

//	----------------------------

#region L-value trickery

	#macro nearest		var _id = instance_nearest(x, y, all); (_id)
	#macro multiple_obj	global.multiple_object
	#macro multiple		with(global.multiple_object) id
	#macro object		with(object_index) id
	#macro similar		with(all) if 

	#macro tst unique_var; unique_var

	#macro meeh { (

#endregion

//	----------------------------

#region Compact function arguments

	#macro pos		x, y
	#macro pos3d	x, y, z
	#macro image_scale image_xscale, image_yscale

	#macro phy_position phy_position_x, phy_position_y
	#macro phy_position_previous phy_position_xprevious, phy_position_yprevious
	#macro phy_com phy_com_x, phy_com_y

	#macro vec		global.vector
	#macro vec_arg	global.vector[0], global.vector[1]

#endregion

//	----------------------------