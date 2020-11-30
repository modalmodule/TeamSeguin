//stuffo
if trans = 0
{
	if keyboard_check_pressed(vk_up)
	{
		visible = 1
		sprite_index = Outro;
		depth = -100
		trans = 1
		x = Camera.x
		y = Camera.y
	}
}
/*room_goto (targetRoom);
