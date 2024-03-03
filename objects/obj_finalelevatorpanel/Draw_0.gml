draw_sprite(sprite_index, image_index, x, y)
if (myinteract == 1 && global.interact == 0 && con == 0)
{
    global.interact = 1
    con = 5
	if (!global.decomp_vars.VanillaMode)
	{
		if ((FL_ElevatorFinalFloor == 0))
			FL_ElevatorFinalFloor = 1;
		else
			FL_ElevatorFinalFloor = 0;
	}
}
if (con == 1)
{
    global.facechoice = 0
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_finalelevatorpanel_134")
    instance_create(0, 0, obj_dialoguer)
    con = 2
    buffer = 5
}
if (con == 2 && instance_exists(OBJ_WRITER) == 0)
{
    buffer -= 1
    draw_set_color(c_white)
    ossafe_fill_rectangle((__view_get(VIEW_PROP_CAM_X, view_current) + 16), (__view_get(VIEW_PROP_CAM_Y, view_current) + 5), (__view_get(VIEW_PROP_CAM_X, view_current) + 304), (__view_get(VIEW_PROP_CAM_Y, view_current) + 80))
    draw_set_color(c_black)
    ossafe_fill_rectangle((__view_get(VIEW_PROP_CAM_X, view_current) + 19), (__view_get(VIEW_PROP_CAM_Y, view_current) + 8), (__view_get(VIEW_PROP_CAM_X, view_current) + 301), (__view_get(VIEW_PROP_CAM_Y, view_current) + 77))
    draw_set_color(c_white)
    scr_setfont(fnt_maintext)
    if (FL_CurrentElevatorFloor != 0)
        draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 50), (__view_get(VIEW_PROP_CAM_Y, 0) + 15), string_hash_to_newline(scr_gettext("elevator_l1f")))
    else
        draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 50), (__view_get(VIEW_PROP_CAM_Y, 0) + 15), string_hash_to_newline(scr_gettext("elevator_cancel")))
    if (FL_CurrentElevatorFloor != 1)
        draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 160), (__view_get(VIEW_PROP_CAM_Y, 0) + 15), string_hash_to_newline(scr_gettext("elevator_r1f")))
    else
        draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 160), (__view_get(VIEW_PROP_CAM_Y, 0) + 15), string_hash_to_newline(scr_gettext("elevator_cancel")))
    if (FL_CurrentElevatorFloor != 2)
        draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 160), (__view_get(VIEW_PROP_CAM_Y, 0) + 35), string_hash_to_newline(scr_gettext("elevator_r2f")))
    else
        draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 160), (__view_get(VIEW_PROP_CAM_Y, 0) + 35), string_hash_to_newline(scr_gettext("elevator_cancel")))
    if (trigger > 0)
    {
        if (FL_CurrentElevatorFloor != 3)
            draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 50), (__view_get(VIEW_PROP_CAM_Y, 0) + 35), string_hash_to_newline(scr_gettext("elevator_l2f")))
        else
            draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 50), (__view_get(VIEW_PROP_CAM_Y, 0) + 35), string_hash_to_newline(scr_gettext("elevator_cancel")))
    }
    if (trigger > 0)
    {
        if (FL_CurrentElevatorFloor != 4)
            draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 50), (__view_get(VIEW_PROP_CAM_Y, 0) + 55), string_hash_to_newline(scr_gettext("elevator_l3f")))
        else
            draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 50), (__view_get(VIEW_PROP_CAM_Y, 0) + 55), string_hash_to_newline(scr_gettext("elevator_cancel")))
    }
    if (trigger > 1)
    {
        if (FL_CurrentElevatorFloor != 5)
            draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 160), (__view_get(VIEW_PROP_CAM_Y, 0) + 55), string_hash_to_newline(scr_gettext("elevator_r3f")))
        else
            draw_text((__view_get(VIEW_PROP_CAM_X, 0) + 160), (__view_get(VIEW_PROP_CAM_Y, 0) + 55), string_hash_to_newline(scr_gettext("elevator_cancel")))
    }
    draw_sprite(spr_heartsmall, 0, ((__view_get(VIEW_PROP_CAM_X, 0) + 30) + (heartx * 110)), ((__view_get(VIEW_PROP_CAM_Y, 0) + 20) + (20 * hearty)))
    if (buffer < 0)
    {
        if keyboard_check_pressed(vk_up)
        {
            if (hearty > 0)
                hearty -= 1
        }
        if keyboard_check_pressed(vk_down)
        {
            if (hearty < 2)
            {
                if (heartx == 0)
                {
                    if (hearty == 1 && trigger > 0)
                        hearty += 1
                    if (hearty == 0 && trigger > 0)
                        hearty += 1
                }
                if (heartx == 1)
                {
                    if (hearty == 1 && trigger > 1)
                        hearty += 1
                    if (hearty == 0)
                        hearty += 1
                }
            }
        }
        if keyboard_check_pressed(vk_right)
        {
            if (heartx == 0)
            {
                if (hearty == 0)
                    heartx += 1
                if (hearty == 1)
                    heartx += 1
                if (hearty == 2 && trigger > 1)
                    heartx += 1
            }
        }
        if keyboard_check_pressed(vk_left)
        {
            if (heartx == 1)
            {
                if (hearty == 0)
                    heartx -= 1
                if (hearty == 1 && trigger > 0)
                    heartx -= 1
                if (hearty == 2 && trigger > 1)
                    heartx -= 1
            }
        }
        if control_check_pressed(InteractButton)
        {
            con = 5
            if (heartx == 0 && hearty == 0)
            {
                if (FL_CurrentElevatorFloor != 0)
                    FL_CurrentElevatorFloor = 0
                else
                    con = 15
            }
            if (heartx == 1 && hearty == 0)
            {
                if (FL_CurrentElevatorFloor != 1)
                    FL_CurrentElevatorFloor = 1
                else
                    con = 15
            }
            if (heartx == 1 && hearty == 1)
            {
                if (FL_CurrentElevatorFloor != 2)
                    FL_CurrentElevatorFloor = 2
                else
                    con = 15
            }
            if (heartx == 0 && hearty == 1)
            {
                if (FL_CurrentElevatorFloor != 3)
                    FL_CurrentElevatorFloor = 3
                else
                    con = 15
            }
            if (heartx == 0 && hearty == 2)
            {
                if (FL_CurrentElevatorFloor != 4)
                    FL_CurrentElevatorFloor = 4
                else
                    con = 15
            }
            if (heartx == 1 && hearty == 2)
            {
                if (FL_CurrentElevatorFloor != 5)
                    FL_CurrentElevatorFloor = 5
                else
                    con = 15
            }
        }
    }
}
if (con == 5)
{
    snd_play(snd_item)
    con = 6
    alarm[4] = 15
}
if (con == 7)
{
    rect = 1
    global.facing = Direction.Down
    snd_play(snd_bell)
    con = 8
    alarm[4] = 11
}
if (con == 9)
{
    snd_play(snd_noise)
    if (FL_RodeLongElevator == 0)
        elev = caster_load("music/elevator_last.ogg")
    if (FL_RodeLongElevator == 1)
        elev = caster_load("music/elevator.ogg")
    xx = __view_get(VIEW_PROP_CAM_X, 0)
    yy = __view_get(VIEW_PROP_CAM_Y, 0)
    siner = 0
    con = 10
    intense = 0.5
    alarm[4] = 15
}
if (con == 11)
{
    con = 12
    if (FL_RodeLongElevator == 0)
        alarm[4] = 560
    if (FL_RodeLongElevator == 1)
        alarm[4] = 110
    caster_play(elev, 1, 1)
    if (room == room_fire_labelevator)
    {
        con = 12
        alarm[4] = -1
        alarm[8] = 85
    }
}
if (con == 12)
{
    obj_mainchara.cutscene = true
    __view_set(VIEW_PROP_CAM_TARGET, 0, noone)
    siner += 1
    if (alarm[4] > 20 && intense < 1.5)
        intense += 0.02
    if (alarm[8] > 1 && intense < 0.6)
        intense += 0.01
    else if (intense > 0)
        intense -= 0.1
    __view_set(VIEW_PROP_CAM_X, 0, (xx + (sin((siner / 1.3)) * intense)))
    __view_set(VIEW_PROP_CAM_Y, 0, (yy + (sin((siner / 0.9)) * intense)))
}
if (con == 13)
{
    __view_set(VIEW_PROP_CAM_X, 0, xx)
    __view_set(VIEW_PROP_CAM_Y, 0, yy)
    rect = 2
    con = 14
    snd_play(snd_bell)
    alarm[4] = 11
}
if (con == 15)
{
    FL_RodeLongElevator = 1
    global.facing = Direction.Down
    snd_play(snd_noise)
    global.interact = 0
    con = 0
    scr_tempsave()
    myinteract = 0
}
if (rect == 1)
{
    if (rectaur < 20)
        rectaur += 2
    draw_set_color(c_black)
    ossafe_fill_rectangle(140, 180, (140 + rectaur), 250)
    ossafe_fill_rectangle(180, 180, (180 - rectaur), 250)
    if (room == room_truelab_castle_elevator)
    {
        ossafe_fill_rectangle(0, 120, 100, (120 + rectaur))
        ossafe_fill_rectangle(0, 160, 100, (260 - rectaur))
    }
}
if (rect == 2)
{
    if (rectaur > 0)
        rectaur -= 2
    draw_set_color(c_black)
    ossafe_fill_rectangle(140, 180, (140 + rectaur), 250)
    ossafe_fill_rectangle(180, 180, (180 - rectaur), 250)
}
if (con == 25)
{
    caster_free(elev)
    __view_set(VIEW_PROP_CAM_X, 0, xx)
    __view_set(VIEW_PROP_CAM_Y, 0, yy)
    con = 26
    alarm[4] = 45
}
if (con == 27)
{
    instance_create(0, 0, obj_labelevator_a)
    con = 28
}
