if(isKeyboard) {
	drawDegrees = point_direction(x, y, mouse_x, mouse_y)
} else {
	var hraxis = gamepad_axis_value(0, gp_axisrh);
	var vraxis = gamepad_axis_value(0, gp_axisrv);
	
	if(!(hraxis == 0 && vraxis == 0)) {
		drawDegrees = point_direction(0, 0, hraxis, vraxis);
	}
	
	show_debug_message("axis = " + string(hraxis) + " " + string(vraxis) + " " + string(drawDegrees) + " " + string(point_direction(0, 0, -1, 0))) 
	
}

draw_sprite_ext(s_player, 0, x, y, 1, 1, drawDegrees, c_white, 1)