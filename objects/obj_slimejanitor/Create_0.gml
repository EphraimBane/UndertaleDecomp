dsprite = spr_npc_dadslime
usprite = spr_npc_dadslime
lsprite = spr_npc_dadslime
rsprite = spr_npc_dadslime
dtsprite = spr_npc_dadslime
utsprite = spr_npc_dadslime
ltsprite = spr_npc_dadslime
rtsprite = spr_npc_dadslime
myinteract = 0
facing = Direction.Down
direction = 0
talkedto = 0
image_speed = 0.125
if (FL_TruePacifist == true)
    image_speed = 0.5
if (scr_murderlv() >= 12)
    instance_destroy()
if (FL_KilledMettaton == 1)
    image_speed = 0
