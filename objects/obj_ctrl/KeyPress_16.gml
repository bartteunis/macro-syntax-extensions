/// @description Execute member function
var result;
with(obj_test_methods) {
	result = exec(test1,13,3);
}

show_debug_message(string(result));
// 172