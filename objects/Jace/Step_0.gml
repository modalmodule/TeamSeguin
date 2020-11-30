//Get Player Input
key_left = keyboard_check (vk_left);
key_right = keyboard_check (vk_right);
key_down = keyboard_check (vk_down);

//Calculate Movement
if instance_exists(Transition)
{
	if Transition.trans = 0
	{
		var move = key_right - key_left;
	}
	else var move = 0
}
else
{
	var move = key_right - key_left;
}

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,Wall)) and (key_down)
{
	hsp = 0
}

//Horizontal Collision
if (place_meeting(x + hsp, y, Wall))
{
    while (!place_meeting(x + sign(hsp), y, Wall))
    {
      x = x + sign(hsp);
    }
    hsp = 0;
}

x = x + hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, Wall))
{
    while (!place_meeting(x, y + sign(vsp), Wall))
    {
      y = y + sign(vsp);
    }
    vsp = 0;
}
y = y + vsp;

//Animation

	if (hsp = 0)
	{
		sprite_index = JaceS;
	}
	else
	{
		sprite_index = JaceR;
	}

if (hsp != 0) image_xscale = sign(hsp);
