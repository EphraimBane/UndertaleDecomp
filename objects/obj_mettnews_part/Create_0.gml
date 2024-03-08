stayx = (xstart - __view_get(VIEW_PROP_CAM_X, 0))
stayy = (ystart - __view_get(VIEW_PROP_CAM_Y, 0))
on = 1
ang = (1 + (random(2) * choose(1, -1)))
if (ang > 0)
    ang /= 2
thischara = obj_mainchara
