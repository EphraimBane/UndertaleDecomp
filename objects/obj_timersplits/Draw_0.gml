split[splitno] += 1
draw_set_color(c_red)
scr_setfont(fnt_maintext)
draw_set_halign(fa_left)
for (i = 0; i < (splitno + 1); i += 1)
    draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 10), ((__view_get(VIEW_PROP_CAM_Y, 0) + 10) + (i * 15)), string_hash_to_newline(split[i]))
