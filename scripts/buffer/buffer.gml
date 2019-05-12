var buff = buffer_create(argument_count,buffer_grow,1);
for(var i = 0;i < argument_count;i++) {
	buffer_write(buff,buffer_u8,argument[i]);
}
return buff;