enum MenuOptionTypes {
	CheckBox,
	Slider
}

function menu_checkbox_option(_displayName, _varName, _about, _value) constructor
{
	displayName = _displayName;
	varName = _varName;
	about = _about;
	value = _value;
	type = MenuOptionTypes.CheckBox;
}

function menu_slider_option(_displayName, _varName, _about, _value, _min, _max) constructor
{
	displayName = _displayName;
	varName = _varName;
	about = _about;
	value = _value;
	minValue = _min;
	maxValue = _max;
	type = MenuOptionTypes.Slider;
}