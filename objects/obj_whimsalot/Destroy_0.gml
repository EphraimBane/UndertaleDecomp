if (FL_Hardmode == 0)
{
    if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    {
        global.goldreward[3] += 50
        FL_SparedWhisalot = 1
    }
}
if (FL_Hardmode == 1)
{
    if (mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
        global.goldreward[3] += 3
}
scr_monsterdefeat(0, 0, 0, 0, 0)
with (mypart1)
    instance_destroy()
