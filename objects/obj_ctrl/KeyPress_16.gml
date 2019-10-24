/// @description Execute member function
var result;
with(obj_test_methods) {
	result = exec(add,13,3);
}

log(string(result));
// 16