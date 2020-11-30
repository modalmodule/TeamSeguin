cam = view_camera[0];
follow = Jace;
view_w_half = camera_get_view_width(cam) * 0.5
view_h_half = camera_get_view_height(cam) * 0.5
xTo = xstart;
yTo = ystart;
instance_create_depth(x, y, -100, TransIn)