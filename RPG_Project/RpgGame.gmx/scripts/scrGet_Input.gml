///scrGet_Input

//Get inputs
key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);
key_dash = keyboard_check_pressed(ord('C'));
key_attack = keyboard_check_pressed(ord('X'));
key_frozen = keyboard_check_pressed(ord('Z'));

//Get the axis
xaxis = (key_right - key_left);
yaxis = (key_down - key_up);

//Get direction
dir = point_direction(0,0,xaxis,yaxis);

//Get the length
if (xaxis == 0 && yaxis == 0) {
    length = 0;
}else {
    length = heroMoveSpeed;
}

