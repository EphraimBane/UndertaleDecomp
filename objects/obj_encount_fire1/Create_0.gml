if (FL_DisableRandomEncounters == 1 || FL_TruePacifist == 1)
    instance_destroy()
alldead = 0
global.encounter = 0
factor = 220
desto = 0
if (room == room_fire5 && FL_HotlandBattleProgressCounter < 1)
    factor = 80
if (room == room_fire6 && FL_HotlandBattleProgressCounter < 2)
    factor = 120
if (room == room_fire_walkandbranch && FL_HotlandBattleProgressCounter < 3)
    factor = 80
if (room == room_fire_preshootguy4 && FL_HotlandBattleProgressCounter < 4)
    factor = 20
script_execute(scr_steps, factor, 30, 40, 205)
if (scr_enemynpc3() == 1)
    instance_destroy()
if (room == room_fire_preshootguy4 && FL_CompletedShootPuzzle4 != 0)
    instance_destroy()
