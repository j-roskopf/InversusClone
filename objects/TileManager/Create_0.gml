roomTileWidth = 30
roomTileHeight = 16

tileWidth = 64
tileHeight = 64

enum mapTiles {
	empty = 0,
	player = 1,
	enemy = 2
}

mapOfRoom[0,0] = mapTiles.empty

for(var i = 0; i <= roomTileWidth; i++) {
	for(var j = 0; j <= roomTileHeight; j++) {
		mapOfRoom[i, j] = mapTiles.empty
	}
}

//place a tile everywhere in the map by default
for(var i = 0; i <= roomTileWidth; i++;) {
	for(var j = 0; j <= roomTileHeight; j++;) {
		instance_create_layer(i * tileWidth, j * tileHeight, "Player_Tile", o_Tile)
	}
}