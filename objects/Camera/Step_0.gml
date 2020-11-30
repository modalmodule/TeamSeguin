//Update Destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}
//Update Object Position 

x += (xTo - x) / 1;
y += (yTo - y) / 1;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

//Update Camera View
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("City"))
{
	layer_x("City",x/1.4);
}

