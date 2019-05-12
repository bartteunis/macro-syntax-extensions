// Now do actual call
global.temp_value = argument[0];
global.return_value = undefined;
global.args = array_create(argument_count-1);
for(var i = 0;i < argument_count-1;i++) {
	global.args[@i] = argument[i+1];
}
event_user(method_event);

// Return result
return global.return_value;