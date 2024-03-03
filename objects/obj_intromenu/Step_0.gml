if (naming == 1 || naming == 2)
    scr_namingscreen_check(charname)

if (control_check_pressed(MenuButton))
{
	caster_free(all);
	room_goto(room_decomp_settings);
	control_clear(CancelButton);
}