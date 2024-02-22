con = 0
ended = 0
if (FL_PreCastleUnknown1 == 1)
    ended = 1
if (FL_PreCastleUnknown2 == 1)
    ended = 1
if (FL_PreCastleUnknown3 == 1)
    ended = 1
if (ended == 0)
{
    ff = instance_create(x, y, obj_kitchenforcefield)
    ff.image_yscale = 4
    ff.basic = 0
}
timer = 0
