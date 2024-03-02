/// @func			__view_set_internal(property, camera_index, value)
/// @desc			THIS IS A LEGACY FUNCTION DO NOT CALL
/// @deprecated
/// @param	{real}	property		The property to get
/// @param	{real}	view_index		The view index
/// @param	{real}	value			The value to set the property to
function __view_set_internal(_property, _view_index, _value)
{
	var __prop = _property
	var __index = _view_index
	var __val = _value
	switch __prop
	{
	    case VIEW_PROP_CAM_X:
	        var __cam = view_get_camera(__index)
	        camera_set_view_pos(__cam, __val, camera_get_view_y(__cam))
	        break
	    case VIEW_PROP_CAM_Y:
	        __cam = view_get_camera(__index)
	        camera_set_view_pos(__cam, camera_get_view_x(__cam), __val)
	        break
	    case VIEW_PROP_CAM_WIDTH:
	        __cam = view_get_camera(__index)
	        camera_set_view_size(__cam, __val, camera_get_view_height(__cam))
	        break
	    case VIEW_PROP_CAM_HEIGHT:
	        __cam = view_get_camera(__index)
	        camera_set_view_size(__cam, camera_get_view_width(__cam), __val)
	        break
	    case VIEW_PROP_CAM_ANGLE:
	        __cam = view_get_camera(__index)
	        camera_set_view_angle(__cam, __val)
	        break
	    case VIEW_PROP_CAM_X_BORDER:
	        __cam = view_get_camera(__index)
	        camera_set_view_border(__cam, __val, camera_get_view_border_y(__cam))
	        break
	    case VIEW_PROP_CAM_Y_BORDER:
	        __cam = view_get_camera(__index)
	        camera_set_view_border(__cam, camera_get_view_border_x(__cam), __val)
	        break
	    case VIEW_PROP_CAM_X_SPEED:
	        __cam = view_get_camera(__index)
	        camera_set_view_speed(__cam, __val, camera_get_view_speed_y(__cam))
	        break
	    case VIEW_PROP_CAM_Y_SPEED:
	        __cam = view_get_camera(__index)
	        camera_set_view_speed(__cam, camera_get_view_speed_x(__cam), __val)
	        break
	    case VIEW_PROP_CAM_TARGET:
	        __cam = view_get_camera(__index)
	        camera_set_view_target(__cam, __val)
	        break
	    case VIEW_PROP_VISIBLE:
	        __res = view_set_visible(__index, __val)
	        break
	    case VIEW_PROP_X_PORT:
	        __res = view_set_xport(__index, __val)
	        break
	    case VIEW_PROP_Y_PORT:
	        __res = view_set_yport(__index, __val)
	        break
	    case VIEW_PROP_W_PORT:
	        __res = view_set_wport(__index, __val)
	        break
	    case VIEW_PROP_H_PORT:
	        __res = view_set_hport(__index, __val)
	        break
	    case VIEW_PROP_CAMERA:
	        __res = view_set_camera(__index, __val)
	        break
	    case VIEW_PROP_SURFACE_ID:
	        __res = view_set_surface_id(__index, __val)
	        break
	    default:
	        break
	}
	
	return 0;
}