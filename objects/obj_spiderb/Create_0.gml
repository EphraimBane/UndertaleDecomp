script_execute(scr_monstersetup, 0, 0, 0, 0, 0)
image_speed = 0
part1 = obj_spiderb_body
mypart1 = instance_create((x + 62), (y - 2), part1)
alarm[9] = 8
hurtanim = 0
hurtsound = snd_hurtgirl
talked = false
whatiheard = -1
attacked = 0
killed = 0
global.heard = 0
takedamage = 0
mercymod = -960
sha = 0
shb = 0
flex = 0
encourage = 0
criticize = 0
hug = 0
con = 0
turnamt = 0
purpletime = 0
blconactive = 0
struggle = 0
FL_MuffetBribePrice = 10
bribes = 0
atkdown = 0
type = 10
obj_battlebg.visible = false
blconwd = 3717328137821
talktime = 0
ht = sprite_height
wd = sprite_width
itemuse = 0
murder = 0
if (scr_murderlv() >= 12)
{
    murder = 1
    global.monsterdef[myself] = -800
    mercymod = -90000
}
