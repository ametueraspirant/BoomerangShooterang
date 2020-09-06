/// How 2 Use
/// all inputs are structs.
/// _state must contain a hs and vs variable, corresponding to the entitiy's current horizontal and vertical speed.
/// _state must also contain the variables hsf and vsf, to store fractional speeds until the next moment that the script is called.
/// Thanks to Zen00 and Sahaun for helping with this code
function increment_fractions(_state) {
	// Add fractions back
	_state.hs += _state.hsf;
	_state.vs += _state.vsf;
	
	// Store and remove fractions for the next frame, so we're always in an integer position
	// Int64s don't store fractions, so we're essentially flooring our numbers to remove the fraction, this also caps the value of our speed to 4.something quintrillion.
	_state.hsf = frac(_state.hs);
	_state.hs = int64(_state.hs);
	_state.vsf = frac(_state.vs);
	_state.vs = int64(_state.vs);
	
	// return _state into the external variables
	return _state;
}

/// @func		animation_end()
/// @returns	{bool}						Whether sprite_index has finished animating or not
/// @author		Minty Python
function animation_end() {
	return (image_index + image_speed*sprite_get_speed(sprite_index)/(sprite_get_speed_type(sprite_index)==spritespeed_framespergameframe? 1 : game_get_speed(gamespeed_fps)) >= image_number);	
}

/// @func		approach(val1, val2, amount)
/// @param		{real}	 val1				Initial value
/// @param		{real}	 val2				Target value
/// @param		{real}	 amount				Increment (or Decrement)
/// @returns	{real}						Changed value
/// @author		Meseta
function approach(_val1, _val2, _inc) {
	return (_val1 + clamp(_val2-_val1, -_inc, _inc));
}
