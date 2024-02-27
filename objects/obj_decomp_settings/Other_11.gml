/// @description Register
array_push(categories, new menu_category("General", "General decomp settings", 
	[
		new menu_checkbox_option("Vanilla Mode", "VanillaMode", "Disables Everything if enabled", global.decomp_vars.VanillaMode, false),
		new menu_checkbox_option("Enable Command Console", "DevConsoleEnabled", "Toggles the Command Console (bound to TAB)", global.decomp_vars.DevConsoleEnabled, true),
		new menu_checkbox_option("Enable PS4/Vita Dog Shrine", "EnablePSDogShrine", "Enables the the Playstation Dog Shrine", global.decomp_vars.EnablePSDogShrine, true),
		new menu_checkbox_option("Enable Switch Dog Shrine", "EnableSwitchDogShrine", "Enables the Switch Mew Mew Fight", global.decomp_vars.EnableSwitchDogShrine, true),
		new menu_checkbox_option("PS4 Trophies", "EnablePS4Trophies", "Enables PS4 style trophies on all playforms", global.decomp_vars.EnablePS4Trophies, false),
		new menu_checkbox_option("Custom Achievements", "EnableCustomAchievements", "Adds Achievments created by Vultu and Daniela", global.decomp_vars.EnableCustomAchievements, false),
		//new menu_checkbox_option("Enable Xbox Dog Shrine", "EnableXboxDogShrine", "Enables the Xbox Dog Shrine", global.decomp_vars.EnableXboxDogShrine, true)
	]));
	
array_push(categories, new menu_category("Audio", "Settings for adjusting audio", 
	[
		new menu_slider_option("Master", "MasterVolume", "Master Mixing Volume", global.decomp_vars.MasterVolume, 100, 0, 100, 1, 2, masterVolumeSet),
		new menu_slider_option("Music", "MusicVolume", "Master Mixing Volume (not implemented)", global.decomp_vars.MusicVolume, 100, 0, 100),
		new menu_slider_option("SoundFX", "SoundFXVolume", "Sound Effect Mixing Volume (not implemented)", global.decomp_vars.SoundFXVolume, 100, 0, 100),
		new menu_checkbox_option("Restore SoundFX Panning", "RestoreSFXPan", "Restores SFX Panning to areas that support it", global.decomp_vars.RestoreSFXPan, true)
	]));
	
array_push(categories, new menu_category("Battle", "General Battle Settings", 
	[
		new menu_checkbox_option("Demo Heart Fracture Delay", "DemoHeartFracture", "Restores the 500ms delay when the heart fractures", global.decomp_vars.DemoHeartFracture, true),
		new menu_slider_option("Heart Fracture Delay", "DemoHeartFractureDelay", "Master Mixing Volume", global.decomp_vars.DemoHeartFractureDelay, 500, 250, 1000, 1, 10)
	]));











































