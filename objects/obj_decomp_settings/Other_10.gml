/// @description Save

for (var c = 0; c < array_length(categories); c++)
{
	for (var o = 0; o < array_length(categories[c].options); o++)
	{
		var opt = categories[c].options[o];
		global.decomp_vars[$opt.varName] = real(opt.value);
	}
}

save_decomp_vars();










































