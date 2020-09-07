/// @description Init Game

// set up global inputs to be imported to local later
global.up = ord("W");
global.left = ord("A");
global.down = ord("S");
global.right = ord("D");
global.dash = vk_lshift;
global.fire = mb_left;
global.secondary = vk_space;
global.main_layer = "Instances";
global.menu = vk_escape;
global.debug = vk_f3;

// randomise the game maker seed
randomise();

// enum to check game state
enum gstate {
	main,   // main menu
	prep,   // pre game screen
	go,     // during game
	scores  // score board
}

// set a variable to the enum to check
state = gstate.go;
#macro _gamestate obj_game_controller.state

// set up the controllable camera object
instance_create_layer(0, 0, global.main_layer, obj_camera);