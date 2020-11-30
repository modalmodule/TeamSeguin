if sprite_index = Outro
{
	if image_index > image_number - 1
	{
		room_goto(targetRoom);
		sprite_index = sprite11
		trans = 0
		visible = 0
		Jace.x = targetX;
		Jace.y = targetY;
		instance_create_depth(x, y, -100, TransIn)
		x = ox
		y = oy
	}
}