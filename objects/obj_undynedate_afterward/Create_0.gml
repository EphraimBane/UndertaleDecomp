con = 0
if (global.flag[389] == 3)
{
    FL_AnimationIndex = 0
    con = 1
    alarm[4] = 45
    global.interact = 1
    if instance_exists(obj_mainchara)
    {
        obj_mainchara.x = 120
        obj_mainchara.y = 160
        global.interact = 1
    }
    undyne = instance_create(150, 135, obj_undyne_actor)
    undyne.sprite_index = spr_undyne_lt
    FL_UndyneExpression = 0
}
else
{
    instance_destroy()
    return;
}
