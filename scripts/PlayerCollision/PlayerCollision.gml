if(hSpeed != 0) {
	if(place_meeting(x + hSpeed, y, o_wall)) {
		//collision horizontal
		repeat(abs(hSpeed)) {
			if(!place_meeting(x + sign(hSpeed), y, o_wall)) {
				x += sign(hSpeed)	
			} else {
				break
			}
		}
		
		show_debug_message("horizontal " + string(hSpeed))
	
		hSpeed = 0
	}
}

if(vSpeed != 0) {
	//collision vertical
	if(place_meeting(x, y + vSpeed, o_wall)) {
		repeat(abs(vSpeed)) {
			if(!place_meeting(x, y + sign(vSpeed), o_wall)) {
				y += sign(vSpeed)	
			} else {
				break
			}
		}
		
		show_debug_message("vertical " + string(vSpeed))

		vSpeed = 0
	}
}

