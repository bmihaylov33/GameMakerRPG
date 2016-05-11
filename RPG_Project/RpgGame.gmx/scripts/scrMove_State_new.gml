///scrMove_State_Test

scrGet_Input();

//Get the length
if (xaxis == 0 && yaxis == 0) {
    length = 0;
}else {
    length = heroMoveSpeed;
}

//Get the xMoveSpeed and yMoveSpeed
xMoveSpeed = lengthdir_x(length,dir);
yMoveSpeed = lengthdir_y(length,dir);

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

//Sprite animation
image_speed = sign(length)*.2;

if (length == 0) { 
    image_index = 0;
}

    //Vertical sprites
    if (yMoveSpeed > 0) {
        sprite_index = sprBigEye_Down;
    }else if (yMoveSpeed < 0){
        sprite_index = sprBigEye_Up;
    }
    //Horizontal sprites
    if (xMoveSpeed > 0) {
        sprite_index = sprBigEye_Right;
    }else if (xMoveSpeed < 0){
        sprite_index = sprBigEye_Left;
    }













