function decomp_gamestart()
{
	if (ossafe_file_exists("decomp_vars.ini"))
		load_decomp_vars();
		
	save_decomp_vars();
	
	
	
	audio_falloff_set_model(audio_falloff_none);
}