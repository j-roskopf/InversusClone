left = false
right = false
up = false
down = false
fire = false

//check left
if(keyboard_check(ord("A")) || keyboard_check(vk_left)) {
	left = true
	isKeyboard = true
	isGamepad = false
} else if((gamepad_axis_value(0, gp_axislh) < 0)) {
	left = true
	isKeyboard = false
	isGamepad = true
}

//check right
if(keyboard_check(ord("D")) || keyboard_check(vk_right)) {
	right = true
	isKeyboard = true
	isGamepad = false
} else if((gamepad_axis_value(0, gp_axislh) > 0)) {
	right = true
	isKeyboard = false
	isGamepad = true
}

//check up
if(keyboard_check(ord("W")) || keyboard_check(vk_up) ) {
	up = true
	isKeyboard = true
	isGamepad = false
} else if((gamepad_axis_value(0, gp_axislv) < 0)) {
	up = true
	isKeyboard = false
	isGamepad = true
}

//check down
if(keyboard_check(ord("S")) || keyboard_check(vk_down) ) {
	down = true
	isKeyboard = true
	isGamepad = false
} else if((gamepad_axis_value(0, gp_axislv) > 0)) {
	down = true
	isKeyboard = false
	isGamepad = true
}

//check fire
if(mouse_check_button_pressed(mb_left)) {
	fire = true
	isKeyboard = true
	isGamepad = false
} else if(gamepad_button_check_pressed(0, gp_shoulderrb)) {
	fire = true
	isKeyboard = false
	isGamepad = true
}

if(keyboard_check(vk_shift)) {
	maxSpeed = maxSpeedRunning
} else {
	maxSpeed = maxSpeedDefault
}