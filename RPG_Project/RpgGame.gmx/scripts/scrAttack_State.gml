///scrAttack_State

image_speed = .5;

switch (sprite_index) {
    case sprBigEye_Down:
        sprite_index = sprBigEye_Attack_Down;
        break;
    case sprBigEye_Up:
        sprite_index = sprBigEye_Attack_Up;
        break;
    case sprBigEye_Right:
        sprite_index = sprBigEye_Attack_Right;
        break;
    case sprBigEye_Left:
        sprite_index = sprBigEye_Attack_Left;
        break;
}
