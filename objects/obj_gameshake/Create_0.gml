gameshake = 100
alarm[0] = 8
if (global.osflavor == OSFlavors.PC)
    window_set_fullscreen(false)
window_set_caption(" ")
if (global.osflavor == OSFlavors.PC)
{
    window_center()
    wx = window_get_x()
    wy = window_get_y()
    window_set_position((wx + gameshake), wy)
}
__background_set(2, 3, bg_num9)
__background_set(1, 3, 1)
__background_set(7, 3, 1)
__background_set(8, 3, 1)
__background_set(0, 3, 1)
__background_set(11, 3, c_black)
__background_set(12, 3, c_black)
in_silence = 0
if (global.osflavor == OSFlavors.PC)
{
	// Vultu: Toby you can't delete a running program...
    if file_exists("undertale.exe")
        file_delete("undertale.exe")
    if file_exists("undertale.EXE")
        file_delete("undertale.EXE")
    if file_exists("Undertale.exe")
        file_delete("Undertale.exe")
    if file_exists("UNDERTALE.exe")
        file_delete("UNDERTALE.exe")
}
if ossafe_file_exists("undertale.ini")
    ossafe_file_delete("undertale.ini")
if ossafe_file_exists("file0")
    ossafe_file_delete("file0")
if ossafe_file_exists("file1")
    ossafe_file_delete("file1")
if ossafe_file_exists("file2")
    ossafe_file_delete("file2")
if ossafe_file_exists("file3")
    ossafe_file_delete("file3")
if ossafe_file_exists("file4")
    ossafe_file_delete("file4")
if ossafe_file_exists("file5")
    ossafe_file_delete("file5")
if ossafe_file_exists("file6")
    ossafe_file_delete("file6")
if ossafe_file_exists("file7")
    ossafe_file_delete("file7")
if ossafe_file_exists("file8")
    ossafe_file_delete("file8")
if ossafe_file_exists("file9")
    ossafe_file_delete("file9")
gx = ossafe_file_text_open_write("system_information_962")
ossafe_file_text_write_string(gx, "a")
ossafe_file_text_close(gx)
if (global.steam_int == 1)
{
    if (!steam_file_exists("system_information_962"))
        steam_file_write_file("system_information_962", "system_information_962")
}
ossafe_savedata_save()
