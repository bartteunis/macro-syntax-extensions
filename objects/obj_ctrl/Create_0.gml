/// @description Example stuff

// Define a "lightweight object"
ds meh lw_object
{
	// Variables go here
	set "test"  to 5;
	set "value" to "blablabla";
}

// Define a "full object"
def Object prototype {
	// Definition of member variables
	b = 0;
	c = 38;
	d = "meh";
	
	l = list();
	
	bah = buffer(
		0x00,0x01,0x02,0x03,
		0x04,0x05,0x06,0x07
	);
}

def AnotherObject prototype {
	// Definition of member variables
	z = 78;
}

a = new(Object);