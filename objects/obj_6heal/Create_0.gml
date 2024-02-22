image_blend = c_lime
if instance_exists(obj_6soul_helpcutscene)
    depth = -14
image_alpha = 0
var hope_sprite = spr_6hope
if (global.language == "ja")
    hope_sprite = spr_6hope_ja
sprite_index = choose(2363, 2352, 2344, 2349, hope_sprite, 2338)
if (sprite_index != spr_6bandage_big)
{
    image_xscale = 2
    image_yscale = 2
}
image_speed = 0
image_angle = random(360)
vspeed = (2.5 + random(1))
