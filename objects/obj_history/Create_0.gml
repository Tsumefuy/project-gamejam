function animate_text(_text, _indice, _x, _y, _color, _length, _scale) {
	var _string = string_copy(_text, 0, _indice);
	
	draw_set_color(_color);
	
	draw_text_ext_transformed(_x, _y, _string, 250, _length, _scale, _scale, 0);
	
}

function slice_velocity(_indice, _speed, _max) {
	if _indice + _speed >= _max {
		return _max
	}
	return _indice + _speed
}

text = [
	"“A lenda dos lápis”\n\nReza a lenda que há muito tempo existia uma quarta raça suprema, esta era muito diferente das outras, era mais alta e possuía um longo tronco arredondado, chegava a ser inacreditável a forma que eles mantinham o seu equilíbrio, já que todo o seu corpo era sustentado por um fino pedaço deslizante de algo que, estranhamente, não se pode definir. Porém, o que mais fascinava era sua capacidade inacreditável, eles podiam ----- coisas -----."
];

slice = 0;
length = string_length(text[0]);
list_length = array_length(text);
indice = 1;
vel = 0.2;
alpha = 1;
trasition=false; 