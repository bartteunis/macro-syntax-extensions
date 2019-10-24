/// @description My methods

// Inherit parent methods (TODO)
event_inherited();

functions

	func add as {
		// Use named arguments
		params
			param a
			param b
		end_params
		
		ret a + b;
	}
	
	func cmp as {
		params
			param a
			param b
		end_params
		
		ret a > b;
	}
	
	func test as {
		// Use args array
		ret args;
	}
	
	func new_list as {
		ret list();
	}

end_functions