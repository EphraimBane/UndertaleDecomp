function scr_weaponeq()
{
	if (global.weapon == Items.ToughGlove && global.inbattle == true && FL_StrongToughGlove == true)
	    global.at = (8 + (global.lv * 2))
	if (argument0 >= 0)
	    global.item[argument0] = global.weapon
	global.weapon = argument1
	if (global.weapon == Items.Stick)
	    global.wstrength = 0
	if (global.weapon == Items.ToyKnife)
	    global.wstrength = 3
	if (global.weapon == Items.ToughGlove)
	    global.wstrength = 5
	if (global.weapon == Items.BalletShoes)
	    global.wstrength = 7
	if (global.weapon == Items.TornNotebook)
	    global.wstrength = 2
	if (global.weapon == Items.BurntPan)
	    global.wstrength = 10
	if (global.weapon == Items.EmptyGun)
	    global.wstrength = 12
	if (global.weapon == Items.WornDagger)
	    global.wstrength = 15
	if (global.weapon == Items.RealKnife)
	    global.wstrength = 99
	if (global.armor == Items.CowboyHat)
	    global.wstrength += 5
	if (global.armor == Items.TemyArmor)
	    global.wstrength += 10
	script_execute(scr_itemnameb)
	script_execute(scr_itemname)
}
