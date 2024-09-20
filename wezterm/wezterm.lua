local wezterm = require("wezterm")
local config = wezterm.config_builder()

return {
	-- color_scheme = 'termnial.sexy',
	color_scheme = "Catppuccin Mocha",
	enable_tab_bar = false,
	font_size = 16.0,
	font = wezterm.font("JetBrains Mono"),
	-- macos_window_background_blur = 40,
	macos_window_background_blur = 30,

	-- window_background_image = '/Users/omerhamerman/Downloads/3840x1080-Wallpaper-041.jpg',
	-- window_background_image_hsb = {
	-- 	brightness = 0.01,
	-- 	hue = 1.0,
	-- 	saturation = 0.5,
	-- },
	-- window_background_opacity = 0.92,
	window_background_opacity = 1.0,
	-- window_background_opacity = 0.78,
	-- window_background_opacity = 0.20,
	window_decorations = "RESIZE",
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},

	ssh_domains = {
		{
			-- The name of this specific domain.  Must be unique amongst
			-- all types of domain in the configuration file.
			name = "casa",

			-- identifies the host:port pair of the remote server
			-- Can be a DNS name or an IP address with an optional
			-- ":port" on the end.
			remote_address = "10.0.40.102",

			-- Whether agent auth should be disabled.
			-- Set to true to disable it.
			-- no_agent_auth = false,

			-- The username to use for authenticating with the remote host
			username = "fabrice",

			-- If true, connect to this domain automatically at startup
			-- connect_automatically = true,

			-- Specify an alternative read timeout
			-- timeout = 60,

			-- The path to the wezterm binary on the remote host.
			-- Primarily useful if it isn't installed in the $PATH
			-- that is configure for ssh.
			-- remote_wezterm_path = "/home/yourusername/bin/wezterm"
		},
	},
}
