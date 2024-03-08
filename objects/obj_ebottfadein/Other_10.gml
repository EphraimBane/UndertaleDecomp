for (i = 0; i < 4; i += 1)
{
    xx = camera_0_x
    yy = camera_0_y
    draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (-10 + yy), 2, 2, 0, c_white, n_alpha)
    draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (190 + yy), 2, 2, 0, c_white, n_alpha)
    draw_sprite_ext(spr_noise, floor((n_index / 2)), ((xx - 10) + (i * 200)), (390 + yy), 2, 2, 0, c_white, n_alpha)
}
