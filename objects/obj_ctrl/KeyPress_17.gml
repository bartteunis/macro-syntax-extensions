/// @description Execute member function
var result;
with(obj_test_methods) {
	result = exec(test2,7,4);
}

show_debug_message(string(result));