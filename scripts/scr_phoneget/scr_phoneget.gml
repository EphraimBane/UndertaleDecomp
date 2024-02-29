function scr_phoneget()
{
	i = 0
	loop = 1
	global.phone[8] = 999
	while (loop == 1)
	{
	    if (global.phone[i] == 0)
	    {
	        global.phone[i] = argument0
	        break
	    }
	    else if (i == 8)
	    {
	        scr_itemnospace()
	        break
	    }
	    else
	    {
	        i += 1
	        continue
	    }
	}
	scr_phonename()
}
