if (sound == snd_sparkle1 && soundtimer < 0)
{
    snd_play(snd_splash)
    sound = abc_123_a
    soundtimer = 3
}
soundtimer -= 1
