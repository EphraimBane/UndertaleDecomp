siner = 0
FL_InBattle = 0
event_user(0)
if (FL_TruePacifist == 1)
    return;
if (caster_is_playing(global.currentsong) != 1)
{
    global.currentsong = mus_coretransition
    caster_loop(global.currentsong, 1, 1)
}
