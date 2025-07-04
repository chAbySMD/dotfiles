return {
	darkgray = "#16161d",
	gray     = "#727169",
	innerbg  = nil,
	outerbg  = "{{colors.surface.default.hex}}",
	normal   = "{{colors.primary_fixed.default.hex | set_lightness: -10.0}}",
	insert   = "{{colors.error.default.hex | set_lightness: -10.0}}",
	visual   = "{{colors.tertiary_fixed_dim.default.hex | set_lightness: -10.0}}",
	replace  = "{{colors.primary_fixed_dim.default.hex | set_lightness: -10.0}}",
	command  = "{{colors.error.default.hex | set_lightness: -10.0}}",
}
