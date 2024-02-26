
caster_loop(mus_decomp_settings, 1.0, 1.0);

hover_category = -1;
selected_category = -1;
hover_option = -1;

categories = array_create(0);

prev_dir_x = 0;
prev_dir_y = 0;
prev_button_0 = false;
prev_button_1 = false;
prev_button_2 = false;

menu_pad = 2;

daniela_summer_quote = "summer time?!?! waaaahhh!";
daniela_winter_quote = "cold outside but stay warm inside my bitcoin\nminer infected pc";
daniela_fall_quote = "dont sweep a leaf, eat it";
daniela_spring_quote = "funny spring easter egg:\npress x five times on the title";

season = 0;

slider_hold_timer = 0;

switch (current_month)
{
	case 12:
	case 1:
	case 2:
		season = 1;
		break;
	case 3:
	case 4:
	case 5:
		season = 2;
		break;
	case 6:
	case 7:
	case 8:
		season = 3;
		break;
	case 9:
	case 10:
	case 11:
		season = 4;
		break;
		
}

#region CallbackFunctions
function masterVolumeSet(_value)
{
	audio_set_master_gain(0, _value.value / 100.0);
}
	
#endregion

event_user(1);

function draw_checkbox(_x, _y, _option, _catbox_bounds, _text_color) 
{
	draw_set_color(_text_color);
	draw_text(_x, _y, _option.displayName);
	
	var text_width = string_width("[X]");
	
	
	draw_text((_catbox_bounds[0] + _catbox_bounds[2]) - (menu_pad * 2) - text_width, _y, (_option.value ? "[X]" : "[  ]"))
	
}

function draw_slider(_x, _y, _option, _catbox_bounds, _text_color) 
{
	draw_set_color(_text_color);
	draw_text(_x, _y, _option.displayName);
	var text_height = string_height("A");
	
	var text_width = string_width($"{_option.maxValue}/{_option.maxValue}");
	var text_x = (_catbox_bounds[0] + _catbox_bounds[2]) - (menu_pad * 2);
	
	draw_set_halign(fa_right);
	draw_text(text_x, _y, $"{_option.value}/{_option.maxValue}");
	draw_set_halign(fa_left);
	
	var bar_start_x = _catbox_bounds[0] + _catbox_bounds[2] / 2;
	var bar_end_x = (text_x - text_width) - 4;
	
	draw_line(bar_start_x, _y + (text_height * 0.25), bar_start_x, _y + (text_height * 0.75));
	draw_line(bar_start_x, _y + text_height / 2, bar_end_x, _y + text_height / 2);
	draw_line(bar_end_x, _y + (text_height * 0.25), bar_end_x, _y + (text_height * 0.75));
	
	var slider_min_abs = abs(_option.minValue);
	var temp_value = 0;
	var temp_max = 0;
	
	if (sign(_option.minValue) == 1)
	{
		temp_value = (_option.value) - slider_min_abs;
		temp_max = _option.maxValue - slider_min_abs;
	}
	else
	{
		temp_value = (_option.value) + slider_min_abs;
		temp_max = _option.maxValue + slider_min_abs;
	}
	
	var normalized_value = temp_value / temp_max;
	var slider_x = bar_start_x + ((bar_end_x - bar_start_x) * normalized_value);
	
	ossafe_fill_rectangle(slider_x - 1, _y, slider_x + 1, _y + text_height);
}