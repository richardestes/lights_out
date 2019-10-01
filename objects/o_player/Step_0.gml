/// @description Player Movement
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);

if hinput != 0 {
	hspeed_ += hinput*acceleration_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	hspeed_ = lerp(hspeed_, 0, friction_);
}

if !place_meeting(x, y+1, oBlock) {
	vspeed_ += gravity_;
} else {
	if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_space) {
		vspeed_ = jump_height_;
	}
}

if place_meeting(x+hspeed_, y, oBlock) {
	while !place_meeting(x+sign(hspeed_), y, oBlock) {
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}
x += hspeed_;

if place_meeting(x, y+vspeed_, oBlock) {
	while !place_meeting(x, y+sign(vspeed_), oBlock) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;

//Animation
if (!place_meeting(x,y+1,oBlock))
{
	sprite_index = sprite_idle;
	image_speed = 0;
	if (sign(vspeed_) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hinput == 0)
	{
		sprite_index = sprite_idle;
	}
	else
	{
		sprite_index = sprite_run;
	}
}

if (hspeed_ != 0) image_xscale = sign(hspeed_);