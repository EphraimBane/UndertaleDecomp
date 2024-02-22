function draw_self_border_true()
{
	l = 0
	t = 0
	w = sprite_width
	h = sprite_height
	offx = argument0
	offy = argument1
	ll = (((obj_lborder.x - x) + 1) - offx)
	tt = (((global.idealborder[2] - y) + 1) - offy)
	ww = (((x + w) - obj_rborder.x) - 1)
	hh = (((y + h) - global.idealborder[3]) - 1)
	if (ll > 0)
	    l += ll
	if (tt > 0)
	    t += tt
	if (ww > 0)
	    w -= ww
	if (hh > 0)
	    h -= hh
	w = round(w)
	h = round(h)
	l = round(l)
	t = round(t)
	if ((w + offx) > 0 && (h + offy) > 0)
	{
	    if (l < w && t < h)
	        draw_sprite_part(sprite_index, image_index, l, t, ((w - l) + offx), ((h - t) + offy), ((x + l) - offx), ((y + t) - offy))
	}
}
