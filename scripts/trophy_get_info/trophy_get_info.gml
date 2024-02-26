/// @func trophy_get_info(trophyName)
/// @arg	{string}	trophyName
/// @return	{Array}
function trophy_get_info(_trophyName)
{
	switch(_trophyName)
	{
		case "item_1":
			return [ "0", "Don't Worry, I Have Lots of Ideas for Trophies" ];
		case "item_2":
			return [ "0", "Like Getting Items" ];
		case "item_3":
			return [ "0", "Or Getting More Items" ];
		case "item_4":
			return [ "0", "Help Me, I'm Out of Ideas" ];
		case "ruins":
			return [ "0", "Ruins" ];
		default:
			return [ "0", "Trophy text not set!" ];
			break;
	}
}