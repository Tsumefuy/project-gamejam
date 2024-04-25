if (going_up) {
    // Incrementa _y
    _y += 0.5;
    // Verifica se _y chegou a 5
    if (_y >= range) {
        // Se sim, mude a direção para decrescente
        going_up = false;
    }
} else {
    // Decrementa _y
    _y -= 0.5;
    // Verifica se _y chegou a 0
    if (_y <= 0) {
        // Se sim, mude a direção para crescente novamente
        going_up = true;
    }
}
// Agora _y está variando entre 0 e 5 e voltando em um ciclo contínuo

if (collision_circle(x, y, 100, obj_player, false, false) and keyboard_check_pressed(ord("Z"))) {
	obj_player.equiped = true;
	instance_destroy();
}