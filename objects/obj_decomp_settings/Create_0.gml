
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

array_push(categories, new menu_category("General", "General decomp settings", 
	[
		new menu_checkbox_option("Vanilla Mode", "VanillaMode", "Disables Everything if enabled", global.decomp_vars.VanillaMode),
		new menu_checkbox_option("Enable Command Console", "DevConsoleEnabled", "Toggles the Command Console (bound to TAB)", global.decomp_vars.DevConsoleEnabled),
		new menu_checkbox_option("Enable Exclusive Console Content", "AllowConsoleContent", "Allow Switch/PS4 Content?", global.decomp_vars.AllowConsoleContent)
	]));
	
array_push(categories, new menu_category("Audio", "Settings for adjusting audio", 
	[
		new menu_slider_option("Master", "MasterVolume", "Master Mixing Volume", global.decomp_vars.MasterVolume, 0, 100)
	]));

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
	
	var temp_value = abs(_option.minValue) + (_option.value);
	var temp_max = abs(_option.minValue) + _option.maxValue;
	
	var normalized_value = temp_value / temp_max;
	var slider_x = bar_start_x + ((bar_end_x - bar_start_x) * normalized_value);
	
	ossafe_fill_rectangle(slider_x - 1, _y, slider_x + 1, _y + text_height);
}