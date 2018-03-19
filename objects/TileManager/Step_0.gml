//draw the stuff in our map!
var currentMap = mapOfRoom

for(var i = 0; i <= array_height_2d(currentMap); i++;) {
	for(var j = 0; j < array_length_2d(currentMap, i); j++;) {
		if(currentMap[i, j] != mapTiles.empty) {
			var instance = instance_position(i * tileWidth, j * tileHeight, o_Tile)
			if(currentMap[i, j] == mapTiles.player) {
				with(instance) {
					image_index = 1
				}
			} else if(currentMap[i, j] == mapTiles.enemy) {
				with(instance) {
					image_index = 2
				}
			} else {
				with(instance) {
					image_index = 0
				}
			}
		}
	}
}