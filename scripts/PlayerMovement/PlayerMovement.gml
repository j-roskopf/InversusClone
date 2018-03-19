var playerMoving = false
if(left) {
	hSpeed -= playerSpeed * acceleration
	playerMoving = true
}
if (right) {
	hSpeed += playerSpeed * acceleration
	playerMoving = true
} 
if(up) {
	vSpeed -= playerSpeed * acceleration
	playerMoving = true
} 
if (down) {
	vSpeed += playerSpeed * acceleration
	playerMoving = true
}

if(hSpeed > maxSpeed) {
	hSpeed = maxSpeed;	
}
if(vSpeed > maxSpeed) {
	vSpeed = maxSpeed	
}
if(hSpeed < -maxSpeed) {
	hSpeed = -maxSpeed	
}
if(vSpeed < -maxSpeed) {
	vSpeed = -maxSpeed	
}

if(!playerMoving) {
	hSpeed = lerp(hSpeed, 0, deacceleration)
	vSpeed = lerp(vSpeed, 0, deacceleration)
}

PlayerCollision()

x += hSpeed
y += vSpeed