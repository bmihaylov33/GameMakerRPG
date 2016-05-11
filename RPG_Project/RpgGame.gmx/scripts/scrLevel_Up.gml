///scrLevel_Up
if ( xp == maxXp ) {
    level += 1
    xp = 0;
    if (level < 10) {
        maxXp += 200;
    }
    if (level >= 10) {
        maxHp += 350;
    }
    if (level >= 15) {
        maxHp += 500;
    }
    if (level >= 25) {
        maxHp += 1000;
    }
    if (level >= 50) {
        maxHp += 5000;
    }
}
