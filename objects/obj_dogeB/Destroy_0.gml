if (mercymod > 99)
    global.goldreward[3] += 5
if (killed == 1)
    FL_DogCoupleStatus = DogStatus.Killed
script_execute(scr_monsterdefeat, 0, 0, 0, 0, 0)
