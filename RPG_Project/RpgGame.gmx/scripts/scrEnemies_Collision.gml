///scrEnemies_Collision

//Collision
    //Horizontal collisin
    if (place_meeting(x+xMoveSpeed,y,objWall_Black)) {
        while(!place_meeting(x+sign(xMoveSpeed),y,objWall_Black)) {
            x += sign(xMoveSpeed);
        }
        xMoveSpeed = 0;
    }
    x += xMoveSpeed; //Move phy_position_x
    //Vertical collisin
    if (place_meeting(x,y+yMoveSpeed,objWall_Black)) {
        while(!place_meeting(x,y+sign(yMoveSpeed),objWall_Black)) {
            y += sign(yMoveSpeed);
        }
        yMoveSpeed = 0;
    }
    y += yMoveSpeed; //Move phy_position_y

