
var saved_draw_state = new draw_state();

draw_set_font(fnt_maintext);
var char_height = string_height(" ");
var char_width = string_width(" ");

#region Plot Variable

if (global.monitorPlotVariable)
{
	var plot_example = "Plot: 999";
	var plot_width = string_width(plot_example);
	var plot_height = string_height(plot_example);
	
	var plot_x = (view_get_xport(0) + view_get_wport(0)) - plot_width;
	var plot_y = (view_get_yport(0) + view_get_hport(0)) - plot_height;
	
	draw_set_color(c_black);
	ossafe_fill_rectangle(plot_x, plot_y, plot_x + plot_width, plot_y + plot_height);
	draw_set_color(c_white);
	draw_text(plot_x, plot_y, $"Plot: {global.plot}");
}
#endregion

#region Position

if (show_position && instance_exists(obj_mainchara))
{
	var pos = $"X,Y: ({obj_mainchara.x}, {obj_mainchara.y})";
	var pos_width = string_width(pos);
	var pos_height = string_height(pos);

	var pos_x = view_get_xport(0);
	var pos_y = view_get_yport(0) + (active * (char_height * 7) + 6);

	draw_set_color(c_black);
	ossafe_fill_rectangle(pos_x, pos_y, pos_x + pos_width, pos_y + pos_height);
	draw_set_color(c_white);
	draw_text(pos_x, pos_y, pos);
}
#endregion

if (!active)
{
	draw_load_state(saved_draw_state);
	delete saved_draw_state;
	return;
}


var bounds_rect = {
	x : view_get_xport(0),
	y : view_get_yport(0),
	w : view_get_wport(0),
	h : (char_height * 7) + 6,
	
	right : view_get_xport(0) + view_get_wport(0),
	bottom : view_get_yport(0) + (char_height * 7) + 6
}

// Vultu: Draw the box
draw_set_color(c_black);
draw_set_alpha(1.0);
ossafe_fill_rectangle(bounds_rect.x, bounds_rect.y, bounds_rect.right, bounds_rect.bottom);
draw_set_color(c_white);
draw_set_alpha(1.0);


#region Input

var input_text_x = bounds_rect.x + char_width + 10;
var input_text_y = (bounds_rect.bottom - char_height) - 2;
var input_box_y = (bounds_rect.bottom - char_height) - 4;


#region Outline
ossafe_fill_rectangle(bounds_rect.x, input_box_y, bounds_rect.right, bounds_rect.bottom);
draw_set_color(c_black);
draw_set_alpha(1.0);
ossafe_fill_rectangle(bounds_rect.x + 3, input_box_y + 3, bounds_rect.right - 4, bounds_rect.bottom - 3);
draw_set_color(c_white);
draw_set_alpha(1.0);
#endregion

#region History

var text_height = string_height("A");

var history_len = array_length(history);
var history_max_pixel_height = (COMMAND_CONSOLE_HISTORY_MAX * text_height) - input_box_y
var history_pixel_height = history_len * text_height;

for (var i = 0; i < history_len; i++)
{
	draw_text(bounds_rect.x + 2, input_box_y - ((i + 1) * char_height), history[i]);
}

if (history_pixel_height > input_box_y)
{
	var scroll_x = bounds_rect.right - 9;
	var scroll_y = bounds_rect.y + 3;
	
	var scroll_width = 5;
	var scroll_height = (input_box_y - 4) - scroll_y;

	draw_set_color(c_gray);
	ossafe_fill_rectangle(scroll_x, scroll_y, scroll_x + scroll_width, scroll_y + scroll_height);
	
	draw_set_color(c_white);
	
	var normalized_history_height = scroll_height / history_max_pixel_height;
	

	var scrollbar_x = scroll_x;
	var scrollbar_y = scroll_y + ((history_pixel_height - input_box_y) * normalized_history_height);
	var scrollbar_right = scrollbar_x + scroll_width;
	var scrollbar_bottom = scroll_y + scroll_height;
	
	//if (point_in_rectangle(mouse_x - view_get_xport(0), mouse_y - view_get_yport(0), scrollbar_x, scrollbar_y, scrollbar_right, scrollbar_bottom))
	//	draw_set_color(c_yellow);
	
	ossafe_fill_rectangle(scrollbar_x, scrollbar_y, scrollbar_right, scrollbar_bottom);
	
}
draw_set_color(c_white);
#endregion

#region Input
draw_text_transformed(input_text_x - char_width - 6, input_text_y, "*", 1.0, 1.0, 0);

//var text_to_draw = string_replace(input_text, " ", "  ");


carat_xoffset = string_width(input_text) * 1;

// Vultu: Draw the carat
if (carat_visible)
	draw_rectangle(input_text_x + carat_xoffset, input_text_y, input_text_x + carat_xoffset, bounds_rect.bottom, false);

draw_text_transformed(input_text_x, input_text_y, input_text, 1.0, 1.0, 0);

var valid_command_name = false;

if (command_name != "")
{
	//trace($"POS: {string_pos(command_name, input_text)}")
	valid_command_name = validCommandName(command_name);
	if (valid_command_name)
		draw_set_color(c_lime);
	else
		draw_set_color(c_red);
		
	draw_text(input_text_x + ((string_pos(command_name, input_text) - 1) * char_width), input_text_y, command_name);
	draw_set_color(c_white);
}

#endregion

#region Popout

var popout_x = bounds_rect.x;
var popout_y = bounds_rect.bottom;

/*
if (valid_command_name)
{
	
}
else
{
	for (var i = 0; i < array_length(commands); i++)
	{
		draw_text(popout_x, popout_y + (i * char_height), commands[i].displayName);
	}
}
*/
#endregion

#region Room name

var room_name = room_get_name(room);
var name_width = string_width(room_name);
var name_height = string_height(room_name);

var name_x = view_get_xport(0);
var name_y = (view_get_yport(0) + view_get_hport(0)) - name_height;

draw_set_color(c_black);
ossafe_fill_rectangle(name_x, name_y, name_x + name_width, name_y + name_height);
draw_set_color(c_white);
draw_text(name_x, name_y, room_name);

#endregion
draw_load_state(saved_draw_state);

delete saved_draw_state;
delete bounds_rect;