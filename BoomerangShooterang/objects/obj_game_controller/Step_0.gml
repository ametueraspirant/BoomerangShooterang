/// @description Run Game

// if the game has started
if(state = game_state.go) {
	// check and spawn the player if they haven't been spawned in
	if(!instance_exists(obj_player)) {
		instance_create_layer(0, 0, global.main_layer, obj_player);
	}
	//monster spawn code goes here TBA
}
