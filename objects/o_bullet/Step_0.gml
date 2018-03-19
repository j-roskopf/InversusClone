var mapOfRoom = TileManager.mapOfRoom
var gridX = x div TileManager.tileWidth
var gridY = y div TileManager.tileHeight

if(mapOfRoom[gridX, gridY] == TileManager.mapTiles.empty) {
	TileManager.mapOfRoom[gridX, gridY] = TileManager.mapTiles.player
} else if(mapOfRoom[gridX, gridY] == TileManager.mapTiles.player) {
	
} else if(mapOfRoom[gridX, gridY] == TileManager.mapTiles.enemy) {

}