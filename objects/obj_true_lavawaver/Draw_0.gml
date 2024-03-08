siner += 1
scr_true_lavawaver(boff, coff)
draw_set_alpha(((sin((siner / 12)) * 0.3) + 0.5))
draw_set_color(c_black)
ossafe_fill_rectangle((camera_get_view_x(view_camera[0]) - 10), (camera_get_view_y(view_camera[0]) - 10), (camera_get_view_x(view_camera[0]) + 330), (camera_get_view_y(view_camera[0]) + 250))
draw_set_alpha(1)
