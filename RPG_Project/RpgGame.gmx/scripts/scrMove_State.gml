///scrMove_State_Test

scrGet_Input();

//Get the xMoveSpeed and yMoveSpeed
xMoveSpeed = lengthdir_x(length,dir);
yMoveSpeed = lengthdir_y(length,dir);

/*//Attack state
if (key_attack) {
    image_index = 0;
    state = scrAttack_State;
}
*/


/*//Dash state
if ((key_dash) && (stamina >= 50)) {
    if ((xMoveSpeed > 0)||(xMoveSpeed < 0)) || ((yMoveSpeed > 0) || (yMoveSpeed < 0)) {
        stamina -= 50;
        state = scrDash_State;
        objBigEye.alarm[0] = room_speed/2;
        alarm[0] = room_speed/12;
    }
}
*/

//Collision
    //Horizontal collisin
    if (place_meeting(x+xMoveSpeed,y,objCollide)) {
        while(!place_meeting(x+sign(xMoveSpeed),y,objCollide)) {
            x += sign(xMoveSpeed);
        }
        xMoveSpeed = 0;
    }
    x += xMoveSpeed; //Move phy_position_x

    //Vertical collisin
    if (place_meeting(x,y+yMoveSpeed,objCollide)) {
        while(!place_meeting(x,y+sign(yMoveSpeed),objCollide)) {
            y += sign(yMoveSpeed);
        }
        yMoveSpeed = 0;
    }
    y += yMoveSpeed; //Move phy_position_y
    
    //Sound
    if (xMoveSpeed > 0) || (yMoveSpeed >0) {
        
    }
    

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













