if (global.osflavor >= OS_FLAVOR_CONSOLE)
{
    var ww = window_get_width()
    var wh = window_get_height()
    var sw = surface_get_width(application_surface)
    var sh = surface_get_height(application_surface)
    var xx = floor(((ww - (sw * global.window_scale)) / 2))
    var yy = floor(((wh - (sh * global.window_scale)) / 2))
    global.window_xofs = xx
    global.window_yofs = yy
    if (os_type == os_switch && wh == 720)
        texture_set_interpolation(true)
    else
        texture_set_interpolation(false)
    if (global.screen_border_active && global.screen_border_alpha > 0)
    {
        scr_draw_screen_border(global.screen_border_id)
        if (global.screen_border_alpha < 1)
        {
            draw_set_alpha((1 - global.screen_border_alpha))
            draw_set_color(c_black)
            ossafe_fill_rectangle(0, 0, (ww - 1), (wh - 1))
            draw_set_alpha(1)
            draw_set_color(c_white)
        }
    }
    draw_enable_alphablend(false)
    draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1)
    draw_enable_alphablend(true)
    texture_set_interpolation(false)
}
else
{
    global.window_xofs = 0
    global.window_yofs = 0
}
if (started < 0 && trophy_ts > 0 && (current_time - trophy_ts) >= 2000)
{
    scr_setfont(fnt_main)
    var lineheight = 32
    if (global.language == "ja")
        lineheight = 36
    var line1 = scr_gettext("trophy_install")
    var dot = scr_gettext("trophy_install_dot")
    var line2 = scr_gettext("trophy_install_line2")
    var width1 = string_width(string_hash_to_newline((((line1 + dot) + dot) + dot)))
    var width2 = string_width(string_hash_to_newline(line2))
    var width = max(width1, width2)
    xx = ((window_get_width() - 10) - width)
    yy = 10
    for (var i = 0; i < (floor(((current_time - trophy_ts) / 500)) % 4); i++)
        line1 += dot
    draw_set_color(c_white)
    draw_text(xx, yy, string_hash_to_newline(line1))
    draw_text(xx, (yy + lineheight), string_hash_to_newline(line2))
}
