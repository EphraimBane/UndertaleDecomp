scr_monstersetup(0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_movedogehead
part2 = obj_movedogetail
part3 = obj_movedogearms
part4 = obj_movedogebody
mypart1 = instance_create(x, y, part1)
mypart2 = instance_create(x, y, part2)
mypart3 = instance_create(x, y, part3)
mypart4 = instance_create(x, y, part4)
hurtanim = 0
hurtsound = snd_ehurt1
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -15
excited = -1
pets = 0
ht = 150
wd = 100
