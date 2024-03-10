scrollspeed = 0.08
repeat (10)
{
    rr = round(random((room_width / 6)))
    rr *= 6
    star = instance_create(rr, 2, obj_waterstar_bg)
    star.size = (0.9 + random(0.3))
}
repeat (20)
{
    rr = round(random((room_width / 6)))
    rr *= 6
    star = instance_create(rr, 2, obj_waterstar_bg)
    star.size = (0.5 + random(0.4))
}
repeat (40)
{
    rr = round(random((room_width / 6)))
    rr *= 6
    star = instance_create(rr, 2, obj_waterstar_bg)
    star.size = (0.4 + random(0.3))
}
__background_set(BG_PROP_X, 4, 0x0000C8) // Vultu: Moldsmal..?
//__background_set(BG_PROP_X, 4, spr_moldsmal)

if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
    {
        if (rsprite == spr_maincharar)
        {
            rsprite = spr_maincharar_shadow
            lsprite = spr_maincharal_shadow
            dsprite = spr_maincharad_shadow
            usprite = spr_maincharau_shadow
        }
    }
}
