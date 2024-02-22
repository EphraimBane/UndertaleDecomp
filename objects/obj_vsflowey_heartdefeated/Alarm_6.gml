if (global.osflavor <= OS_FLAVOR_UNKNOWN_PLATFORM)
    game_end()
else
{
    caster_stop(-3)
    audio_sound_gain(audio_play_sound(snd_gameover_broken, 666, true), 0.6, 0)
    scr_fakecrash_init()
    in_fakecrash = 1
}
