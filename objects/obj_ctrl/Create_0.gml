/// @description Example stuff

// Define a "lightweight object"
lwo meh lw_object
{
	// Variables go here
	set "test"  to 5;
	set "value" to "blablabla";
}

// Define a "full object"
def Object prototype {
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

// Foreach examples
lst_values = list();
ds_list_add(lst_values,
	55,
	178,
	213
);

//foreach (int element in fibNumbers)

foreach lst_values as_list res loop {
	log(string(res[kvp.value]));
}
// Outputs:
// 55
// 178
// 213

map_values = ds_map_create();
ds_map_add(map_values,"Test1","Meh");
ds_map_add(map_values,"Test2","Beh");
ds_map_add(map_values,"Test3","Yeh");

foreach map_values as_map res loop {
	log(string(res[kvp.key])+":"+string(res[kvp.value]));
}

/*
foreach map_values as_key key value val loop {
	
}
//*/

grd_data = grid(4,4);
grd_data[# 0, 0] = 11;
grd_data[# 1, 2] = 38;
grd_data[# 3, 3] = 70;

foreach grd_data as_grid res loop {
	log(string(res[kvp.value]));
}

arr_values = [1, 2, 3, 4, 5];

/*
foreach arr_values as_array res loop {
	show_debug_message(string(res[kvp.value]));
}
//*/

// Outputs:
// 1
// 2
// 3
// 4
// 5

//my_item[?"meh"] = "altamira";

//show_debug_message(my_item[?"meh"]);	// ça ne marche pas!

// L-value trickery
nearest.blablabla = "meh";

multiple_obj = obj_blabla;

multiple.value = "foo";		// Currently uses obj_blabla behind the scenes
//object.value = "foo";		// Same for current object_index

with(obj_blabla) {
	show_debug_message(value);
}

similar x > 0 && y > 0 {
	show_debug_message(string(id));
}

/*
{
	"a" : 0
}
*/

var a = 0;