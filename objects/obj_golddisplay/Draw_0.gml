xx = camera_current_x
yy = (camera_current_y + 10)
f = 188
yf = 8
draw_set_color(c_white)
ossafe_fill_rectangle(((16 + xx) + f), ((74 + yy) + yf), ((116 + xx) + f), ((127 + yy) + yf))
draw_set_color(c_black)
ossafe_fill_rectangle(((19 + xx) + f), ((77 + yy) + yf), ((113 + xx) + f), ((124 + yy) + yf))
scr_setfont(fnt_maintext)
draw_set_color(c_white)
draw_text(((30 + xx) + f), (90 + yy), string_hash_to_newline(scr_gettext("obj_golddisplay_42")))
scr_itemroom()
draw_text(((30 + xx) + f), (110 + yy), string_hash_to_newline(scr_gettext("obj_golddisplay_44", string(itemhold))))
if (instance_exists(OBJ_WRITER) == false)
    instance_destroy()
