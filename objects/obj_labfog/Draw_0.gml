xx += xxspeed
yy += yyspeed
if (xx > (camera_get_view_x(view_camera[0]) + 200))
    xx -= sprite_width
if (xx < (camera_get_view_x(view_camera[0]) - 200))
    xx += sprite_width
if (yy > (camera_get_view_y(view_camera[0]) + 200))
    yy -= sprite_height
if (yy < (camera_get_view_y(view_camera[0]) - 200))
    yy += sprite_height
draw_sprite_ext(sprite_index, 0, xx, yy, 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, (xx - sprite_width), (yy - sprite_height), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, (xx + sprite_width), (yy - sprite_height), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, (xx - sprite_width), (yy + sprite_height), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, (xx + sprite_width), (yy + sprite_height), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, (xx + sprite_width), yy, 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, (xx - sprite_width), yy, 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, xx, (yy + sprite_height), 1, 1, 0, c_white, image_alpha)
draw_sprite_ext(sprite_index, 0, xx, (yy - sprite_height), 1, 1, 0, c_white, image_alpha)
if (image_alpha == 1)
{
    if instance_exists(obj_mainchara)
        draw_sprite_ext(obj_mainchara.sprite_index, obj_mainchara.image_index, obj_mainchara.x, obj_mainchara.y, 1, 1, 0, c_black, 0.3)
}
