scr_monstersetup()
image_speed = 0
part1 = obj_battlebomb_body
mypart1 = instance_create((x + 100), y, part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_nosound
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = 10
sha = 0
shb = 0
defuse = 0
con = 0
gotimer = 2
remtype = 0
bombtype = 1
FL_FailedBombDefusing = 0
ht = 100
wd = 100
