function scr_storageshift()
{
	global.flag[(argument2 + 10)] = argument1
	for (i = argument0; i < 10; i += 1)
	    global.flag[(i + argument2)] = global.flag[((i + argument2) + 1)]
	scr_itemnameb()
	scr_storagename(300)
}
