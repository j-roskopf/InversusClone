viewX = camera_get_view_x(view_camera[0])
viewY = camera_get_view_y(view_camera[0])

var widthScrollAmount = 32
var heightScrollAmount = 18

if(keyboard_check(vk_control)) {
	widthScrollAmount *= 3
	heightScrollAmount *= 3
}

if(mouse_wheel_down()) {
	if(sizeWidth < 1920) {
		sizeWidth += widthScrollAmount
		sizeHeight += heightScrollAmount
		camera_set_view_size(view_camera[0], sizeWidth, sizeHeight)
		camera_set_view_border(view_camera[0], sizeWidth, sizeHeight)
	}
} else if(mouse_wheel_up()) {
	
	if(sizeWidth > 320) {
		sizeWidth -= widthScrollAmount
		sizeHeight -= heightScrollAmount
		camera_set_view_size(view_camera[0], sizeWidth, sizeHeight)
		camera_set_view_border(view_camera[0], sizeWidth, sizeHeight)
	}
}
