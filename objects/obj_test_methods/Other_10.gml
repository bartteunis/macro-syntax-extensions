/// @description My methods

// Inherit parent methods (TODO)
event_inherited();

functions

	func test1 as {
		// Use named arguments
		params
			param a
			param b
		end_params
		
		ret sqr(a) + b;
	}
	
	func test2 as {
		// Use args array
		ret args;
	}

end_functions