function scr_battlegroup()
{
	global.monster[0] = false
	global.monster[1] = false
	global.monster[2] = false
	global.monster[3] = false
	global.turn = 0
	switch global.battlegroup
	{
	    // Test Encounters
		
		// Triple Test Monster (Unused)
		case 1:
	        global.monstertype[0] = 1
	        global.monstertype[1] = 1
	        global.monstertype[2] = 1
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 2
	        global.battlelv = 1
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_testmonster)
	        global.monsterinstance[1] = instance_create(418, 136, obj_testmonster)
	        global.monsterinstance[2] = instance_create(14, 136, obj_testmonster)
	        break
	    
		// Ruins Encounters
		
		// Ruins Dummy
		case 2:
	        global.monstertype[0] = 2
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_dummymonster)
	        break
	    
		// Froggit (Toriel Cutscene)
		case 3:
	        global.monstertype[0] = 3
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_fakefroggit)
	        break
	    
		// Froggit
		case 4:
	        global.monstertype[0] = 4
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
	        break
	    
		// Whimsun
		case 5:
	        global.monstertype[0] = 5
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(214, 16, obj_whimsun)
	        break
	    
		// Froggit, Whimsun
		case 6:
	        global.monstertype[0] = 4
	        global.monstertype[1] = 5
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
	        global.monsterinstance[1] = instance_create(317, 16, obj_whimsun)
	        break
	    
		// Moldsmal
		case 7:
	        global.monstertype[0] = 6
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 156, obj_moldsmal)
	        break
	    
		// Triple Moldsmal
		case 8:
	        global.monstertype[0] = 6
	        global.monstertype[1] = 6
	        global.monstertype[2] = 6
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = (global.battlegroup + 3000)
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msc = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_116")
	        global.monsterinstance[0] = instance_create(15, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(217, 156, obj_moldsmal)
	        global.monsterinstance[2] = instance_create(421, 156, obj_moldsmal)
	        break
	    
		// Double Froggit
		case 9:
	        global.monstertype[0] = 4
	        global.monstertype[1] = 4
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_133")
	        global.monsterinstance[0] = instance_create(116, 136, obj_froggit)
	        global.monsterinstance[1] = instance_create(320, 136, obj_froggit)
	        break
	    
		// Double Moldsmal
		case 10:
	        global.monstertype[0] = 6
	        global.monstertype[1] = 6
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_148")
	        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(320, 156, obj_moldsmal)
	        break
	    
		// Moldsmal, Migosp
		case 11:
	        global.monstertype[0] = 6
	        global.monstertype[1] = 7
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_163")
	        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(320, 136, obj_migosp)
	        break
	    
		// Migosp, Vegetoid
		case 12:
	        global.monstertype[0] = 7
	        global.monstertype[1] = 8
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_178")
	        global.monsterinstance[0] = instance_create(116, 136, obj_migosp)
	        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
	        break
	    
		// Loox
		case 13:
	        global.monstertype[0] = 9
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_193")
	        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
	        break
	    
		// Loox, Vegetoid (Unused)
		case 14:
	        global.monstertype[0] = 9
	        global.monstertype[1] = 8
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_207")
	        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
	        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
	        break
	    
		// Loox, Vegetoid, Migosp
		case 15:
	        global.monstertype[0] = 9
	        global.monstertype[1] = 8
	        global.monstertype[2] = 7
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_222")
	        global.monsterinstance[0] = instance_create(14, 124, obj_loox)
	        global.monsterinstance[1] = instance_create(218, 136, obj_vegetoid)
	        global.monsterinstance[2] = instance_create(422, 136, obj_migosp)
	        break
	    
		// Double Vegetoid
		case 16:
	        global.monstertype[0] = 8
	        global.monstertype[1] = 8
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_238")
	        global.monsterinstance[0] = instance_create(116, 136, obj_vegetoid)
	        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
	        break
	    
		// Double Loox
		case 17:
	        global.monstertype[0] = 9
	        global.monstertype[1] = 9
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_253")
	        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
	        global.monsterinstance[1] = instance_create(320, 124, obj_loox)
	        break
	    
		// Vegetoid
		case 18:
	        global.monstertype[0] = 8
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_268")
	        global.monsterinstance[0] = instance_create(218, 136, obj_vegetoid)
	        break
	    
		// But Nobody Came
		case 19:
	        global.monstertype[0] = 0
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.3, 0.5)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 2
	        global.msg[2] = scr_gettext("scr_battlegroup_282")
	        break
	    
		// Napstablook
		case 20:
	        global.monstertype[0] = 11
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/ghostbattle.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_297")
	        if (FL_Hardmode == true)
	            global.msg[0] = scr_gettext("scr_battlegroup_299")
	        global.monsterinstance[0] = instance_create(266, 106, obj_napstablook)
	        break
	    
		// Loox (Unused)
		case 21:
	        global.monstertype[0] = 9
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_193")
	        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
	        break
	    
		// Toriel
		case 22:
	        global.monstertype[0] = 10
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/boss1.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_327")
	        global.monsterinstance[0] = instance_create(250, 42, obj_torielboss)
	        break
	    
		// Snowdin Encounters
		
		// Doggo
		case 23:
	        global.monstertype[0] = 13
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_342")
	        global.monsterinstance[0] = instance_create(196, 28, obj_movedoge)
	        break
	    
		// Lesser Dog
		case 24:
	        global.monstertype[0] = 14
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_357")
	        global.monsterinstance[0] = instance_create(216, 38, obj_lesserdoge)
	        break
	    
		// Dogamy, Dogaressa
		case 25:
	        global.monstertype[0] = 15
	        global.monstertype[1] = 16
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_371")
	        global.monsterinstance[0] = instance_create(208, 38, obj_mandog)
	        global.monsterinstance[1] = instance_create(208, 38, obj_womandog)
	        break
	    
		// Greater Dog
		case 26:
	        global.monstertype[0] = 17
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/dogsong.ogg")
	        caster_loop(global.batmusic, 0.7, 0.95)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_386")
	        global.monsterinstance[0] = instance_create(208, 38, obj_greatdog)
	        break
	    
		// Papyrus (Boss)
		case 27:
	        global.monstertype[0] = 25
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        if (FL_PapyrusStatus < PapyrusStatus.Spared)
	            global.batmusic = caster_load("music/papyrusboss.ogg")
	        else
	            global.batmusic = caster_load("music/papyrus.ogg")
	        if (scr_murderlv() < 7)
	        {
	            if (FL_PapyrusStatus < PapyrusStatus.Spared)
	                caster_loop(global.batmusic, 0.9, 1)
	            else
	                caster_loop(global.batmusic, 0.5, 1)
	        }
	        else
	            caster_loop(global.batmusic, 0, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_411")
	        if (scr_murderlv() >= 7)
	            global.msg[0] = scr_gettext("scr_battlegroup_413")
	        global.monsterinstance[0] = instance_create(250, 42, obj_papyrusboss)
	        break
	    
		// Gyftrot
		case 28:
	        global.monstertype[0] = 22
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_429")
	        global.monsterinstance[0] = instance_create(208, 38, obj_gyftrot)
	        break
	    
		// Daniela: case 29 is missing, possibly commented out?
		
		// Chilldrake/Snowdrake
		case 30:
	        global.monstertype[0] = 18
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_445")
	            global.monsterinstance[0] = instance_create(216, 38, obj_chilldrake)
	        }
	        else
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_450")
	            global.monsterinstance[0] = instance_create(216, 38, obj_snowdrake)
	        }
	        break
	    
		// Double Chilldrake (Unused)
		case 31:
	        global.monstertype[0] = 18
	        global.monstertype[1] = 18
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_465")
	        global.monsterinstance[0] = instance_create(114, 38, obj_chilldrake)
	        global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
	        break
	    
		// Icecap
		case 32:
	        global.monstertype[0] = 19
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_480")
	        global.monsterinstance[0] = instance_create(216, 38, obj_icecap)
	        break
	    
		// Icecap, Chilldrake/Snowdrake (Unused)
		case 33:
	        global.monstertype[0] = 19
	        global.monstertype[1] = 18
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_497")
	            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
	            global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
	        }
	        else
	        {
	            global.msg[0] = scr_gettext("scr_battlegroup_503")
	            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
	            global.monsterinstance[1] = instance_create(318, 38, obj_snowdrake)
	        }
	        break
	    
		// Jerry (Unused)
		case 34:
	        global.monstertype[0] = 21
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_519")
	        global.monsterinstance[0] = instance_create(216, 127, obj_jerry)
	        break
	    
		// Icecap, Jerry
		case 35:
	        global.monstertype[0] = 19
	        global.monstertype[1] = 21
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_533")
	        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
	        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
	        break
	    
		// Icecap, Jerry, Chilldrake/Snowdrake
		case 36:
	        global.monstertype[0] = 19
	        global.monstertype[1] = 21
	        global.monstertype[2] = 18
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	            global.msg[0] = scr_gettext("scr_battlegroup_549")
	        else
	            global.msg[0] = scr_gettext("scr_battlegroup_548")
	        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
	        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
	        if (FL_SnowdrakeStatus == SnowdrakeStatus.Killed)
	            global.monsterinstance[2] = instance_create(388, 38, obj_chilldrake)
	        else
	            global.monsterinstance[2] = instance_create(388, 38, obj_snowdrake)
	        break
	    
		// Daniela: case 37-39 is missing.
		
		// Waterfall Encounters
		
		// Aaron
		case 40:
	        global.monstertype[0] = 23
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_566")
	        global.monsterinstance[0] = instance_create(216, 38, obj_aaron)
	        break
	    
		// Temmie
		case 41:
	        global.monstertype[0] = 24
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_581")
	        global.monsterinstance[0] = instance_create(216, 38, obj_tembattle)
	        break
	    
		// Moldsmal, Moldbygg
		case 42:
	        global.monstertype[0] = 12
	        global.monstertype[1] = 26
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_596")
	        global.monsterinstance[0] = instance_create(114, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(316, 156, obj_moldsmalx)
	        break
	    
		// Woshua
		case 43:
	        global.monstertype[0] = 28
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_612")
	        global.monsterinstance[0] = instance_create(114, 136, obj_woshua)
	        break
	    
		// Shyren
		case 44:
	        global.monstertype[0] = 29
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_626")
	        global.monsterinstance[0] = instance_create(218, 36, obj_shyren)
	        break
	    
		// Mad Dummy
		case 45:
	        global.monstertype[0] = 31
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/dummybattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_640")
	        global.monsterinstance[0] = instance_create(270, 80, obj_maddummy)
	        break
	    
		// Aaron, Woshua (Spooky Music Cutscene)
		case 46:
	        global.monstertype[0] = 23
	        global.monstertype[1] = 28
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_640")
	        global.monsterinstance[0] = instance_create(114, 38, obj_aaron)
	        global.monsterinstance[1] = instance_create(318, 136, obj_woshua)
	        obj_woshbody.con = 1
	        obj_woshbody.alarm[4] = 80
	        break
	    
		// Undyne (Boss)
		case 47:
	        global.monstertype[0] = 32
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/undyneboss.ogg")
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = " %%"
	        global.monsterinstance[0] = instance_create(210, 20, obj_undyneboss)
	        break
	    
		// Hotland Encounters
		
		// Mettaton Quiz
		case 48:
	        global.monstertype[0] = 33
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/mettatonbattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_687")
	        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_quiz)
	        instance_create(412, 126, obj_questionasker)
	        break
	    
		// Royal Guards
		case 49:
	        global.monstertype[0] = 34
	        global.monstertype[1] = 35
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_704")
	        global.monsterinstance[0] = instance_create(18, 34, obj_bara01)
	        global.monsterinstance[1] = instance_create(432, 34, obj_bara02)
	        break
	    
		// Tsunderplane
		case 50:
	        global.monstertype[0] = 36
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_719")
	        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
	        break
	    
		// Vulkin
		case 51:
	        global.monstertype[0] = 37
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_733")
	        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
	        break
	    
		// Pyrope
		case 52:
	        global.monstertype[0] = 38
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_747")
	        global.monsterinstance[0] = instance_create(108, 7, obj_pyrope)
	        break
	    
		// Waterfall Encounters (Part 2)
		
		// Double Moldsmal
		case 53:
	        global.monstertype[0] = 12
	        global.monstertype[1] = 12
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_596")
	        global.monsterinstance[0] = instance_create(214, 156, obj_moldsmal)
	        global.monsterinstance[1] = instance_create(418, 156, obj_moldsmal)
	        break
	    
		// Woshua, Aaron
		case 54:
	        global.monstertype[0] = 28
	        global.monstertype[1] = 23
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_778")
	        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
	        global.monsterinstance[1] = instance_create(318, 38, obj_aaron)
	        break
	    
		// Woshua, Moldbygg
		case 55:
	        global.monstertype[0] = 28
	        global.monstertype[1] = 26
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_795")
	        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
	        global.monsterinstance[1] = instance_create(318, 156, obj_moldsmalx)
	        with (obj_moldsmalx)
	        {
	            with (mypart1)
	                instance_destroy()
	            visible = false
	            stage = 1
	            global.monstername[myself] = scr_gettext("monstername_26b")
	            mypart1 = instance_create(x, y, part1)
	            mypart1.stage = 1
	            global.hurtanim[myself] = 0
	            image_index = 0
	            scalevalue = 0.01
	        }
	        break
		
		// Hotland Encounters (Part 2)
		
		// Muffet (Boss)
	    case 56:
	        global.monstertype[0] = 39
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/spider.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_826")
	        global.monsterinstance[0] = instance_create(214, 37, obj_spiderb)
	        break
	    
		// Mettaton (Second Encounter)
		case 57:
	        global.monstertype[0] = 40
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/mettatonbattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_687")
	        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_second)
	        break
	    
		// Waterfall Encounters (Part 3)
		
		// Undyne (Date Fight)
		case 58:
	        global.monstertype[0] = 41
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/undyneboss.ogg")
	        caster_loop(global.batmusic, 0.9, 1.2)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = " %%"
	        global.monsterinstance[0] = instance_create(250, 75, obj_undynebattle2)
	        break
	    
		// Core Encounters
		
		// Madjick
		case 59:
	        global.monstertype[0] = 42
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_868")
	        global.monsterinstance[0] = instance_create(244, 50, obj_wizard)
	        break
	    
		// Knight Knight
		case 60:
	        global.monstertype[0] = 43
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_882")
	        global.monsterinstance[0] = instance_create(56, 40, obj_finalknight)
	        break
	    
		// Final Froggit (Unused)
		case 61:
	        global.monstertype[0] = 44
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_896")
	        global.monsterinstance[0] = instance_create(218, 110, obj_finalfroggit)
	        break
	    
		// Astigmatism
		case 62:
	        global.monstertype[0] = 45
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_910")
	        global.monsterinstance[0] = instance_create(218, 110, obj_astigmatism)
	        break
	    
		// Whimsalot (Unused)
		case 63:
	        global.monstertype[0] = 46
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_924")
	        global.monsterinstance[0] = instance_create(218, 110, obj_whimsalot)
	        break
	    
		// Whimsalot, Final Froggit
		case 64:
	        global.monstertype[0] = 46
	        global.monstertype[1] = 44
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_938")
	        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
	        global.monsterinstance[1] = instance_create(416, 110, obj_finalfroggit)
	        break
	    
		// Whimsalot, Astigmatism
		case 65:
	        global.monstertype[0] = 46
	        global.monstertype[1] = 45
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_953")
	        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
	        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
	        break
	    
		// Final Froggit, Astigmatism
		case 66:
	        global.monstertype[0] = 44
	        global.monstertype[1] = 45
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_968")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
	        break
	    
		// Final Froggit, Astigmatism, Whimsalot
		case 67:
	        global.monstertype[0] = 44
	        global.monstertype[1] = 45
	        global.monstertype[2] = 46
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_983")
	        global.monsterinstance[0] = instance_create(16, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(218, 110, obj_astigmatism)
	        global.monsterinstance[2] = instance_create(420, 110, obj_whimsalot)
	        break
	    
		// Knight Knight, Madjick
		case 68:
	        global.monstertype[0] = 43
	        global.monstertype[1] = 42
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_999")
	        global.monsterinstance[0] = instance_create(16, 50, obj_finalknight)
	        global.monsterinstance[1] = instance_create(366, 50, obj_wizard)
	        break
	    
		// Hotland Encounters (Part 3)
		
		// Bomb (Unused)
		case 69:
	        global.monstertype[0] = 47
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1015")
	        global.monsterinstance[0] = instance_create(256, 120, obj_battlebomb)
	        break
	    
		// Dog Bomb
		case 70:
	        global.monstertype[0] = 47
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1029")
	        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47a")
	        global.monsterinstance[0].bombtype = 1
	        global.monsterinstance[0].mypart1.type = 1
	        global.monsterinstance[0].mypart1.bombtype = 1
	        global.monsterinstance[0].mypart1.sprite_index = spr_tobdog_sleep_firebattle
	        break
	    
		// Water Glass Bomb
		case 71:
	        global.monstertype[0] = 47
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1049")
	        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47b")
	        global.monsterinstance[0].bombtype = 2
	        global.monsterinstance[0].mypart1.type = 2
	        global.monsterinstance[0].mypart1.bombtype = 2
	        global.monsterinstance[0].mypart1.sprite_index = spr_waterglass_battle
	        break
	    
		// Script Bomb
		case 72:
	        global.monstertype[0] = 47
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1068")
	        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47c")
	        global.monsterinstance[0].bombtype = 3
	        global.monsterinstance[0].mypart1.type = 3
	        global.monsterinstance[0].mypart1.bombtype = 3
	        break
	    
		// Basketball Bomb
		case 73:
	        global.monstertype[0] = 47
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1088")
	        global.monsterinstance[0] = instance_create(256, 80, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47d")
	        global.monsterinstance[0].bombtype = 4
	        global.monsterinstance[0].mypart1.type = 4
	        global.monsterinstance[0].mypart1.bombtype = 4
	        break
	    
		// Present Bomb
		case 74:
	        global.monstertype[0] = 47
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1107")
	        global.monsterinstance[0] = instance_create(250, 100, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47e")
	        global.monsterinstance[0].bombtype = 5
	        global.monsterinstance[0].mypart1.type = 5
	        global.monsterinstance[0].mypart1.bombtype = 5
	        break
	    
		// Game Bomb
		case 75:
	        global.monstertype[0] = 47
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1126")
	        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
	        global.monstername[0] = scr_gettext("monstername_47f")
	        global.monsterinstance[0].bombtype = 6
	        global.monsterinstance[0].mypart1.type = 6
	        global.monsterinstance[0].mypart1.bombtype = 6
	        break
	    
		// Royale Guards (RG 04, RG 03, Unused)
		case 76:
	        global.monstertype[0] = 49
	        global.monstertype[1] = 48
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_704")
	        global.monsterinstance[0] = instance_create(46, 66, obj_bara04)
	        global.monsterinstance[1] = instance_create(460, 66, obj_bara03)
	        break
	    
		// Tsunderplane, Vulkin
		case 77:
	        global.monstertype[0] = 36
	        global.monstertype[1] = 37
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1160")
	        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
	        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
	        break
	    
		// Double Pyrope
		case 78:
	        global.monstertype[0] = 38
	        global.monstertype[1] = 38
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1176")
	        global.monsterinstance[0] = instance_create(106, 10, obj_pyrope)
	        global.monsterinstance[1] = instance_create(306, 10, obj_pyrope)
	        break
	    
		// Double Vulkin (Unused)
		case 79:
	        global.monstertype[0] = 37
	        global.monstertype[1] = 37
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1191")
	        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
	        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
	        break
	    
		// Mettaton (Boss)
		case 80:
	        global.monstertype[0] = 50
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/mettatonbattle.ogg")
	        caster_loop(global.batmusic, 0.9, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_687")
	        global.monsterinstance[0] = instance_create(300, 190, obj_mettatonb_third)
	        break
	    
		// Mettaton EX
		case 81:
	        global.monstertype[0] = 51
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/mettaton_ex.ogg")
	        caster_loop(global.batmusic, 1, 0.97)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1221")
	        global.monsterinstance[0] = instance_create(210, 60, obj_mettatonex)
	        break
	    
		// True Lab Encounters
		
		// Lemon Bread
		case 82:
	        global.monstertype[0] = 53
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/amalgam.ogg")
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1236")
	        global.monsterinstance[0] = instance_create(280, 20, obj_lemonbread)
	        break
	    
		// Reaper Bird
		case 83:
	        global.monstertype[0] = 54
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/amalgam.ogg")
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1250")
	        global.monsterinstance[0] = instance_create(240, 20, obj_reaperbird)
	        break
	    
		// Snowdrakes Mother
		case 84:
	        global.monstertype[0] = 55
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/snowy.ogg")
	        caster_loop(global.batmusic, 0.9, 0.5)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1264")
	        global.monsterinstance[0] = instance_create(240, 20, obj_snowdrakemom)
	        break
	    
		// Triple Memoryhead
		case 85:
	        global.monstertype[0] = 56
	        global.monstertype[1] = 56
	        global.monstertype[2] = 56
	        global.batmusic = caster_load("music/amalgam.ogg")
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1278")
	        global.monsterinstance[0] = instance_create(15, 146, obj_memoryhead)
	        global.monsterinstance[1] = instance_create(217, 146, obj_memoryhead)
	        global.monsterinstance[2] = instance_create(421, 146, obj_memoryhead)
	        break
	    
		// Endogeny
		case 86:
	        global.monstertype[0] = 57
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/sfx_woofenstein_loop.ogg")
	        caster_loop(global.batmusic, 0.8, 0.85)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1294")
	        global.monsterinstance[0] = instance_create(180, 90, obj_endogeny)
	        break
	    
		// Asriel Lost Souls
		
		// Undyne (Lost Soul)
		case 87:
	        global.monstertype[0] = 58
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1314")
	        global.monsterinstance[0] = instance_create(296, 70, obj_ripoff_undyne)
	        break
	    
		// Papyrus, Sans (Lost Soul)
		case 88:
	        global.monstertype[0] = 60
	        global.monstertype[1] = 61
	        global.monstertype[2] = 0
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1334")
	        global.monsterinstance[0] = instance_create(76, 35, obj_ripoff_papyrus)
	        global.monsterinstance[1] = instance_create(456, 148, obj_ripoff_sans)
	        break
	    
		// Alphys (Lost Soul)
		case 89:
	        global.monstertype[0] = 59
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1314")
	        global.monsterinstance[0] = instance_create(266, 100, obj_ripoff_alphys)
	        break
	    
		// Toriel, Asgore (Lost Soul)
		case 90:
	        global.monstertype[0] = 62
	        global.monstertype[1] = 63
	        global.monstertype[2] = 0
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/xpart.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1334")
	        global.monsterinstance[0] = instance_create(26, 94, obj_ripoff_toriel)
	        global.monsterinstance[1] = instance_create(356, 62, obj_ripoff_asgore)
	        break
	    
		// Genocide Encounters
		
		// Monster Kid
		case 91:
	        global.monstertype[0] = 64
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 1, 0.25)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1395")
	        global.monsterinstance[0] = instance_create(260, 110, obj_mkid_battle)
	        break
	    
		// Undyne (Genocide Boss)
		case 92:
	        global.monstertype[0] = 65
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/x_undyne.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1410")
	        global.monsterinstance[0] = instance_create(210, 20, obj_undyne_ex)
	        break
	    
		// Glad Dummy
		case 93:
	        global.monstertype[0] = 66
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/prebattle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1422")
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.monsterinstance[0] = instance_create(216, 136, obj_gladdummy)
	        break
	    
		// Mettaton NEO
		case 94:
	        global.monstertype[0] = 67
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/mettaton_neo.ogg")
	        caster_loop(global.batmusic, 0.7, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1439")
	        global.monsterinstance[0] = instance_create(210, 0, obj_mettaton_neo)
	        break
	    
		// Sans
		case 95:
	        with (obj_battlebg)
	            instance_destroy()
	        global.monstertype[0] = 68
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/zz_megalovania.ogg")
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = ""
	        global.monsterinstance[0] = instance_create(270, 110, obj_sansb)
	        break
	    
		// Asgore Related Stuff
		
		// Asgore (Intro)
		case 100:
	        global.monstertype[0] = 52
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = ""
	        global.monster[0] = true
	        global.monsterinstance[0] = instance_create(116, 16, obj_asgore_finalintro)
	        global.mnfight = -999
	        break
	    
		// Asgore (Boss)
		case 101:
	        global.monstertype[0] = 52
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/vsasgore.ogg")
	        caster_loop(global.batmusic, 1, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1484")
	        global.monsterinstance[0] = instance_create(208, 8, obj_asgoreb)
	        instance_create(0, 0, obj_purplegradienter)
	        instance_create(0, 0, obj_orangeparticlegen)
	        break
	    
		// Hard Mode Encounters
		
		// Final Froggit, Astigmatism
		case 120:
	        global.monstertype[0] = 70
	        global.monstertype[1] = 71
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1501")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
	        break
	    
		// Final Froggit, Migospel
		case 121:
	        global.monstertype[0] = 70
	        global.monstertype[1] = 73
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1517")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(426, 130, obj_migospel)
	        break
	    
		// Parsnik
		case 122:
	        global.monstertype[0] = 75
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1532")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        break
	    
		// Double Moldessa
		case 123:
	        global.monstertype[0] = 74
	        global.monstertype[1] = 74
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1547")
	        global.monsterinstance[0] = instance_create(118, 127, obj_moldessa)
	        global.monsterinstance[1] = instance_create(318, 127, obj_moldessa)
	        break
	    
		// Triple Moldessa
		case 124:
	        global.monstertype[0] = 74
	        global.monstertype[1] = 74
	        global.monstertype[2] = 74
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1563")
	        global.monsterinstance[0] = instance_create(18, 127, obj_moldessa)
	        global.monsterinstance[1] = instance_create(218, 127, obj_moldessa)
	        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
	        break
	    
		// Final Froggit, Whimsalot
		case 125:
	        global.monstertype[0] = 70
	        global.monstertype[1] = 72
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1580")
	        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
	        global.monsterinstance[1] = instance_create(416, 120, obj_whimsalot)
	        break
	    
		// Final Froggit
		case 126:
	        global.monstertype[0] = 70
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1595")
	        global.monsterinstance[0] = instance_create(208, 110, obj_finalfroggit)
	        break
	    
		// Whimsalot, Parsnik (Unused)
		case 127:
	        global.monstertype[0] = 72
	        global.monstertype[1] = 75
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1609")
	        global.monsterinstance[0] = instance_create(110, 120, obj_whimsalot)
	        global.monsterinstance[1] = instance_create(316, 120, obj_parsnik)
	        break
	    
		// Moldessa, Migospel
		case 128:
	        global.monstertype[0] = 74
	        global.monstertype[1] = 73
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1624")
	        global.monsterinstance[0] = instance_create(116, 127, obj_moldessa)
	        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
	        break
	    
		// Parsnik, Migospel
		case 129:
	        global.monstertype[0] = 75
	        global.monstertype[1] = 73
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1639")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
	        break
	    
		// Double Parsnik
		case 130:
	        global.monstertype[0] = 75
	        global.monstertype[1] = 75
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1654")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        global.monsterinstance[1] = instance_create(318, 120, obj_parsnik)
	        break
	    
		// Parsnik, Astigmatism (Unused)
		case 131:
	        global.monstertype[0] = 75
	        global.monstertype[1] = 71
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1669")
	        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
	        global.monsterinstance[1] = instance_create(314, 110, obj_astigmatism)
	        break
	    
		// Double Astigmatism
		case 132:
	        global.monstertype[0] = 71
	        global.monstertype[1] = 71
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1684")
	        global.monsterinstance[0] = instance_create(108, 110, obj_astigmatism)
	        global.monsterinstance[1] = instance_create(312, 110, obj_astigmatism)
	        break
	    
		// Astigmatism, Migospel, Moldessa (Unused)
		case 133:
	        global.monstertype[0] = 71
	        global.monstertype[1] = 73
	        global.monstertype[2] = 74
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1699")
	        global.monsterinstance[0] = instance_create(8, 110, obj_astigmatism)
	        global.monsterinstance[1] = instance_create(213, 130, obj_migospel)
	        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
	        break
	    
		// Whimsalot, Parsnik, Moldessa (Unused)
		case 134:
	        global.monstertype[0] = 71
	        global.monstertype[1] = 75
	        global.monstertype[2] = 74
	        global.batmusic = caster_load("music/battle2.ogg")
	        caster_loop(global.batmusic, 0.75, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1716")
	        global.monsterinstance[0] = instance_create(18, 120, obj_whimsalot)
	        global.monsterinstance[1] = instance_create(218, 120, obj_parsnik)
	        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
	        break
	    
		// Secret Bosses
		
		// Glyde
		case 135:
	        global.monstertype[0] = 76
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = caster_load("music/battle1.ogg")
	        caster_loop(global.batmusic, 0.5, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1733")
	        global.monsterinstance[0] = instance_create(188, 16, obj_glydeb)
	        break
	    
		// So Sorry
		case 140:
	        global.monstertype[0] = 80
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.batmusic = mus_wrongworld
	        caster_loop(global.batmusic, 0.8, 1)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1747")
	        global.monsterinstance[0] = instance_create(216, 78, obj_sosorry)
	        break
	    
		// Mad Mew Mew
		case 141:
	        global.monstertype[0] = 77
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_mewmew_1")
	        if (global.tempvalue[14] == 1)
	            scr_gettext("scr_battlegroup_mewmew_2")
	        global.monsterinstance[0] = instance_create(216, 40, obj_mewmew_boss)
	        break
	    
		// Asriel Stuff
		
		// Asriel (Boss)
		case 255:
	        global.monstertype[0] = 99
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        caster_free(all)
	        global.batmusic = caster_load("music/xpart.ogg")
	        caster_loop(global.batmusic, 0.8, 0.95)
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1762")
	        global.monsterinstance[0] = instance_create(258, 8, obj_asrielb)
	        break
	    
		// Asriel (Final Form)
		case 256:
	        global.monstertype[0] = 100
	        global.monstertype[1] = 0
	        global.monstertype[2] = 0
	        FL_InBattle = true
	        FL_FightingAsriel = true
	        if (!caster_is_playing(global.batmusic))
	        {
	            if (FL_AsrielFightConvoCounter == 0)
	                global.batmusic = caster_load("music/a2.ogg")
	            else
	                global.batmusic = caster_load("music/xpart_2.ogg")
	            caster_loop(global.batmusic, 0.8, 0.95)
	        }
	        global.msc = 0
	        global.battlelv = 0
	        global.actfirst = 0
	        global.extraintro = 0
	        global.msg[0] = scr_gettext("scr_battlegroup_1787") //* ASRIEL blocks the way!
	        if (FL_AsrielFightConvoCounter == 2)
	            global.msg[0] = scr_gettext("scr_battlegroup_1789") //* ASRIEL's SOUL was awakened&  by the power of your&  friends!
	        if (FL_AsrielFightConvoCounter == 3)
	            global.msg[0] = scr_gettext("scr_battlegroup_1791") //* It's time to say goodbye.
	        global.border = 0
	        SCR_BORDERSETUP()
	        global.monsterinstance[0] = instance_create(320, 48, obj_asrielfinal)
	        break
	}
	
}
