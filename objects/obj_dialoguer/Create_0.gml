count = 0
side = 0
global.facechange = 1
xx = __view_get(0, view_current)
yy = __view_get(1, view_current)
if instance_exists(obj_mainchara)
{
    if (obj_mainchara.y > (yy + 130))
    {
        side = 0
        if (global.language == "ja" && global.facechoice == 4)
        {
            writer = instance_create((xx + 10), (yy - 5), OBJ_WRITER)
            writer.writingxend = (writer.writingxend_base - 38)
            script_execute(scr_facechoice)
        }
        else if (global.facechoice != 0)
        {
            writer = instance_create((xx + 68), (yy - 5), OBJ_WRITER)
            script_execute(scr_facechoice)
        }
        else
            writer = instance_create((xx + 10), (yy - 5), OBJ_WRITER)
    }
    else
    {
        side = 1
        if (global.language == "ja" && global.facechoice == 4)
        {
            writer = instance_create((xx + 10), (yy + 150), OBJ_WRITER)
            writer.writingxend = (writer.writingxend_base - 38)
            script_execute(scr_facechoice)
        }
        else if (global.facechoice != 0)
        {
            writer = instance_create((xx + 68), (yy + 150), OBJ_WRITER)
            script_execute(scr_facechoice)
        }
        else
            writer = instance_create((xx + 10), (yy + 150), OBJ_WRITER)
    }
}
