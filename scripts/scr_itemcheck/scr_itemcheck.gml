/// @func			scr_itemcheck(item)
/// @arg	{Real}	item
function scr_itemcheck(_item)
{
	haveit = false
	itemcount = 0
	for (i = 0; i < 8; i += 1)
	{
	    if (global.item[i] == _item)
	        haveit = true
	    if (global.item[i] == _item)
	        itemcount += 1
	}
}
