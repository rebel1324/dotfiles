local wezterm = require("wezterm")
local dpi = 96.0
local padding = 0
local fontset = {"Terminus", "TerminessTTF NF", "NeoDunggeunmo", "Noto Emoji"}

return {
	exit_behavior = "Close",
	window_background_opacity = 0.9,
	text_background_opacity = 0.9,
	visual_bell = {
		fade_in_function = "EaseIn",
		fade_in_duration_ms = 150,
		fade_out_function = "EaseOut",
		fade_out_duration_ms = 150,
	},
	colors = {
		visual_bell = "#202020"
	},
	warn_about_missing_glyphs = false,
    enable_scroll_bar = false,
    scrollback_lines = 1500,
    default_prog = {"c:\\tools\\msys64\\usr\\bin\\bash.exe", "--login"},
    inactive_pane_hsb = {
        saturation = 0.5,
        brightness = 0.4,
    },
    text_blink_rate = 250,
    pane_focus_follows_mouse = false,
    window_decorations = "RESIZE",
    colors = {
        split = "#fafafa",
    },
    set_environment_variables = {
        MSYSTEM = "MINGW64"
    },
	font = wezterm.font_with_fallback(fontset, {foreground="#fafafa"}),

    font_size = dpi/8,
    dpi = dpi,
    font_rules = {
        {
            italic = true,
			font = wezterm.font_with_fallback(fontset, {foreground="#fafafa"})
        },
        {
            intensity = "Bold",
			font = wezterm.font_with_fallback(fontset, {foreground="#fafafa", weight=1000})
        },
        {
            italic = true,
            intensity = "Bold",
			font = wezterm.font_with_fallback(fontset, {foreground="#fafafa", weight=1000})
        },
        {
            intensity = "Half",
			font = wezterm.font_with_fallback(fontset, {foreground="#fafafa"})
        },
        {
            italic = true,
            intensity = "Half",
			font = wezterm.font_with_fallback(fontset, {foreground="#fafafa"})
        },
    },
    font_shaper = "Harfbuzz",
    harfbuzz_features = { "zero", "liga", "clig", "calt"},
	freetype_load_target = "Normal",
	freetype_render_target = "Mono",
	font_antialias = "None",
	allow_square_glyphs_to_overflow_width = "Never",
	freetype_load_flags = "MONOCHROME",
	custom_block_glyphs = true,
    color_scheme = "Sundried",
    keys = {
        {key="|", mods="ALT|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        {key="_", mods="ALT|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        {key="h", mods="ALT", action=wezterm.action{ActivatePaneDirection="Left"}},
        {key="j", mods="ALT", action=wezterm.action{ActivatePaneDirection="Down"}},
        {key="k", mods="ALT", action=wezterm.action{ActivatePaneDirection="Up"}},
        {key="l", mods="ALT", action=wezterm.action{ActivatePaneDirection="Right"}},
        {key="z", mods="ALT", action="TogglePaneZoomState"},
        {key="h", mods="CTRL|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 10}}},
        {key="j", mods="CTRL|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 10}}},
        {key="k", mods="CTRL|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 10}}},
        {key="l", mods="CTRL|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 10}}},
    },
    window_background_gradient = {
        orientation = "Vertical",
        colors = {
            "#0a0a0a",
            "#0f0f0f",
            "#131313"
        },
        interpolation = "Linear",
        blend = "Rgb",
    },
    enable_tab_bar = false,
    window_close_confirmation = "NeverPrompt",
    hyperlink_rules = {
        {
            regex = "\\b\\w+://(?:[\\w.-]+)\\.[a-z]{2,15}\\S*\\b",
            format = "$0",
        },
        {
            regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
            format = "mailto:$0",
        },
        {
            regex = "\\bfile://\\S*\\b",
            format = "$0",
        }
    }
}
