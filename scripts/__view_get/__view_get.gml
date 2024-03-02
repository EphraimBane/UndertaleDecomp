/// @func			__view_get(property, view_index, value)
/// @desc			THIS IS A LEGACY FUNCTION DO NOT CALL
/// @deprecated
/// @param	{real}	property		The property to get
/// @param	{real}	view_index		The view index
/// @returns	{any}
function __view_get(_property, _view_index)
{
	var __prop = _property
	var __index = _view_index
	var __res = -1
	switch __prop
	{
	    case VIEW_PROP_CAM_X:
	        var __cam = view_get_camera(__index)
	        __res = camera_get_view_x(__cam)
	        break
	    case VIEW_PROP_CAM_Y:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_y(__cam)
	        break
	    case VIEW_PROP_CAM_WIDTH:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_width(__cam)
	        break
	    case VIEW_PROP_CAM_HEIGHT:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_height(__cam)
	        break
	    case VIEW_PROP_CAM_ANGLE:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_angle(__cam)
	        break
	    case VIEW_PROP_CAM_X_BORDER:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_border_x(__cam)
	        break
	    case VIEW_PROP_CAM_Y_BORDER:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_border_y(__cam)
	        break
	    case VIEW_PROP_CAM_X_SPEED:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_speed_x(__cam)
	        break
	    case VIEW_PROP_CAM_Y_SPEED:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_speed_y(__cam)
	        break
	    case VIEW_PROP_CAM_TARGET:
	        __cam = view_get_camera(__index)
	        __res = camera_get_view_target(__cam)
	        break
	    case VIEW_PROP_VISIBLE:
	        __res = view_get_visible(__index)
	        break
	    case VIEW_PROP_X_PORT:
	        __res = view_get_xport(__index)
	        break
	    case VIEW_PROP_Y_PORT:
	        __res = view_get_yport(__index)
	        break
	    case VIEW_PROP_W_PORT:
	        __res = view_get_wport(__index)
	        break
	    case VIEW_PROP_H_PORT:
	        __res = view_get_hport(__index)
	        break
	    case VIEW_PROP_CAMERA:
	        __res = view_get_camera(__index)
	        break
	    case VIEW_PROP_SURFACE_ID:
	        __res = view_get_surface_id(__index)
	        break
	    default:
	        break
	}
	
	return __res;
}
