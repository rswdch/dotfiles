local wezterm = require("wezterm")

function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Solarized Dark Higher Contrast"
	else
		return "AtomOneLight"
	end
end

return {
	font = wezterm.font("MesloLGS Nerd Font"), -- Change to your preferred font
	font_size = 11, -- Adjust the size as needed

	color_scheme = scheme_for_appearance(get_appearance()),
}
