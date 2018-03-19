following = o_player

viewX = camera_get_view_x(view_camera[0])
viewY = camera_get_view_y(view_camera[0])

sizeWidth = 640
sizeHeight = 360

windowSizeWidth = 1280
windowSizeHeight = 720

window_set_size(windowSizeWidth, windowSizeHeight)

var monitorSizeWidth = display_get_width()
var monitorSizeHeight = display_get_height()

window_set_position(monitorSizeWidth / 2 - windowSizeWidth / 2, monitorSizeHeight / 2 - windowSizeHeight / 2)

camera_set_view_size(view_camera[0], sizeWidth, sizeHeight)
camera_set_view_border(view_camera[0], sizeWidth, sizeHeight)