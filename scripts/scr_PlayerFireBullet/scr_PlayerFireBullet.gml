if(alarm[0] <= 0) {
	var bullet = instance_create_layer(x, y, "Instances", o_bullet)
	alarm[0] = bullet_cooldown_
}