/// @description Execute member function
var result;
with(obj_test_methods) {
	result = exec(test, 7, 4);
}

log(string(result));