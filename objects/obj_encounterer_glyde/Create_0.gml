alldead = 0
global.encounter = 0
script_execute(scr_steps, 3600, 150, 16, 203)
if (FL_TundraKillsCounter == 0 && global.plot > 100)
    instance_destroy()
if (FL_TruePacifist == 1)
    instance_destroy()
if (FL_CheckPapyrusKitchenAgain == 1)
    instance_destroy()
