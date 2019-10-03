/// @description Create the variables
hspeed_ = 0;
max_hspeed_ = 4;
vspeed_ = 0;
gravity_ = .5;
acceleration_ = 1;
friction_ = .3;
jump_height_ = 7;

// Sprite Variables
sprite_idle = sPlayerIdle;
sprite_run = sPlayerRun;

sprinting = false;
jump = false;

// Map the keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);
