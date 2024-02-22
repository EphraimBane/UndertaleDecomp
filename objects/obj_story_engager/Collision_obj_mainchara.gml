if (FL_TruePacifist == 1)
{
    instance_destroy()
    return;
}
if (threshold == 17 && FL_TrueLabEvent12 >= 12)
    FL_EarlyStoryProgressCounter = 17
if (FL_EarlyStoryProgressCounter >= threshold || FL_DatedAlphys >= 12)
    instance_destroy()
else
{
    FL_EarlyStoryProgressCounter = threshold
    global.border = 3
    FL_InBattle = 1
    FL_TypeHeartTransition = 1
    SCR_BORDERSETUP()
    instance_create(0, 0, obj_battlerstory)
}
