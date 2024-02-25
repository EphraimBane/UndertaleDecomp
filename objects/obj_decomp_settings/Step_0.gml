var dir_x = obj_time.right - obj_time.left;
var dir_y = obj_time.up - obj_time.down;

var btn_0 = control_check(0);
var btn_1 = control_check(1);
var btn_2 = control_check(2);
control_clear(0);
control_clear(1);
control_clear(2);

if (hover_category == -1)
{
	if (dir_y == -1)
		hover_category = 0;
	
	if (btn_0 && !prev_button_0)
	{
		event_user(0);
		caster_free(all);
		room_goto(room_intromenu);
	}
	return;
}

if (selected_category == -1)
{
	if (dir_x != prev_dir_x && ((hover_category + dir_x) < array_length(categories)))
		hover_category += dir_x;
	
	if (dir_y == 1)
		hover_category = -1;
		
	if (btn_0 && !prev_button_0)
	{
		selected_category = hover_category;
		hover_option = 0;
		control_clear(0);
	}
}
else
{
	if (dir_y != prev_dir_y && ((hover_option - dir_y) > -1) && ((hover_option - dir_y) < array_length(categories[selected_category].options)))
		hover_option -= dir_y;
		
	var hover_op = categories[selected_category].options[hover_option];
	if (dir_x != 0)
	{
		if (hover_op.type == MenuOptionTypes.Slider)
		{
			if (hover_op.value + dir_x >= hover_op.minValue && hover_op.value + dir_x <= hover_op.maxValue)
				categories[selected_category].options[hover_option].value += dir_x;
		}
	}
	
	if (btn_0 && !prev_button_0)
	{
		switch (hover_op.type)
		{
			case MenuOptionTypes.CheckBox:
				categories[selected_category].options[hover_option].value = !categories[selected_category].options[hover_option].value;
				break;
			case MenuOptionTypes.Slider:
				break;
		}
	}
		
	if (btn_1 && !prev_button_1)
	{
		selected_category = -1;
		hover_option = -1;
	}
}


prev_dir_x = dir_x;
prev_dir_y = dir_y;

prev_button_0 = btn_0;
prev_button_1 = btn_1;
prev_button_2 = btn_2;