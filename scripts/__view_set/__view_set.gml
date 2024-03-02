/// @func			__view_set(property, view_index, value)
/// @desc			THIS IS A LEGACY FUNCTION DO NOT CALL
/// @deprecated
/// @param	{real}	property		The property to get
/// @param	{real}	view_index		The view index
/// @param	{real}	value			The value to set the property to
function __view_set(_property, _view_index, _value)
{
	var __prop = _property
	var __index = _view_index
	var __val = _value
	__view_set_internal(__prop, __index, __val)
	var __res = __view_get(__prop, __index)
	return __res;
}
