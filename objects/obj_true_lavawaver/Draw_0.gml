siner += 1
scr_true_lavawaver(boff, coff)
draw_set_alpha(((sin((siner / 12)) * 0.3) + 0.5))
draw_set_color(c_black)
ossafe_fill_rectangle((__view_get(VIEW_PROP_CAM_X, 0) - 10), (__view_get(VIEW_PROP_CAM_Y, 0) - 10), (__view_get(VIEW_PROP_CAM_X, 0) + 330), (__view_get(VIEW_PROP_CAM_Y, 0) + 250))
draw_set_alpha(1)
