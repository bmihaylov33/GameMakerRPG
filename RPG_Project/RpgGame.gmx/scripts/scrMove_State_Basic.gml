///scrMove_State

//Set move variables
    scrGet_Input();
    
//React to keys
    //Right movement
    if (key_right) && (place_free(x+heroMoveSpeed,y)){
        x += heroMoveSpeed;
        sprite_index = sprBigEye_Right;
        image_speed = 0.2;
        spriteDirection = "Right"
    }
    //Left movement
    if (key_left) && (place_free(x-heroMoveSpeed,y)) {
        x -= heroMoveSpeed;
        sprite_index = sprBigEye_Left;
        image_speed = 0.2;
        spriteDirection = "Left";
    }
    //Up movement
    if (key_up) && (place_free(x,y-heroMoveSpeed)){
        y -= heroMoveSpeed;
        sprite_index = sprBigEye_Up;
        image_speed = 0.2;
        spriteDirection = "Up"
    }
    //Down movement
    if (key_down) && (place_free(x,y+heroMoveSpeed)){
        y += heroMoveSpeed;
        sprite_index = sprBigEye_Down;
        image_speed = 0.2;
        spriteDirection = "Down"
    }
    
    //Sprite idle animation
    if (!key_right) && (!key_left) && (!key_up) && (!key_down) {
        if (spriteDirection == "Right") {
            sprite_index = sprBigEye_Right;
            image_index = 0;
            image_speed = 0;
        }
        if (spriteDirection == "Left") {
            sprite_index = sprBigEye_Left;
            image_index = 0;
            image_speed = 0;
        }
        if (spriteDirection == "Up") {
            sprite_index = sprBigEye_Up;
            image_index = 0;
            image_speed = 0;
        }
        if (spriteDirection == "Down") {
            sprite_index = sprBigEye_Down;
            image_index = 0;
            image_speed = 0;
        }
    }



