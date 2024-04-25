text = [
	"Use W A S D ou as setas para mover o personagem ",
	"Aperte C para atacar ",
	"Pressione o espaço para dar o dash "
];

slice = 0;
length = string_length(text[slice]);
list_length = array_length(text);
vel = 0.01;
alpha = 0;
faded = false;
faded_b = false;
stop = true;