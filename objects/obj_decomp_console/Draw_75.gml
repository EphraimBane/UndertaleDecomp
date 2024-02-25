if (!active)
	return;
	
var prev_alpha = draw_get_alpha()
var prev_color = draw_get_color()
var prev_font = draw_get_font()

draw_set_font(fnt_maintext);

var char_height = string_height(" ");
var char_width = string_width(" ");

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
draw_rectangle(bounds_rect.x, bounds_rect.y, bounds_rect.right, bounds_rect.bottom, false);
draw_set_color(c_white);
draw_set_alpha(1.0);





#region Input

var input_text_x = bounds_rect.x + char_width + 9;
var input_text_y = (bounds_rect.bottom - char_height) - 2;
var input_box_y = (bounds_rect.bottom - char_height) - 4;


#region Outline
draw_rectangle(bounds_rect.x, input_box_y, bounds_rect.right, bounds_rect.bottom, false);
draw_set_color(c_black);
draw_set_alpha(1.0);
draw_rectangle(bounds_rect.x + 3, input_box_y + 3, bounds_rect.right - 4, bounds_rect.bottom - 3, false);
draw_set_color(c_white);
draw_set_alpha(1.0);
#endregion

#region History
for (var i = 0; i < array_length(history); i++)
{
	draw_text(bounds_rect.x, input_box_y - ((array_length(history) - i)* char_height), history[i])
}
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

draw_set_font(prev_font);
draw_set_color(prev_color);
draw_set_alpha(prev_alpha);

delete bounds_rect;