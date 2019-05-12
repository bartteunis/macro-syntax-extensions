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

//	----------------------------

//	Prototype

#macro	lw_object = obj;
#macro	set obj[?
#macro	to ] = 
#macro	ds var obj = ds_map_create();

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
global.temp_value = -1;

//	Method extensions

//	----------------------------
