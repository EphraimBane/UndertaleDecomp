for (i = 0; i < 4; i += 1)
{
    xx = camera_get_view_x(view_camera[0])
    yy = camera_get_view_y(view_camera[0])
    draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (-10 + yy), 2, 2, 0, c_white, n_alpha)
    draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (190 + yy), 2, 2, 0, c_white, n_alpha)
    draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (390 + yy), 2, 2, 0, c_white, n_alpha)
}
