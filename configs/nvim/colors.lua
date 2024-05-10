-- this is my gruvbox-baby modifications
-- this goes in .local/share/nvim/lazy/gruvbox-baby/lua/gruvbox-baby/colors.lua
-- this is currently the master color guide for all other configs

local util = require("gruvbox-baby.util")

local M = {}

local the_palette = {
  dark0 = "#0d0e0f",
  dark = "#202020",
  foreground = "#cec090",
  background = "#120e0d",
  background_dark = "#120e0d",
  background_light = "#32302f",
  medium_gray = "#3c2e26",
  comment = "#594535",
  gray = "#DEDEDE",
  soft_yellow = "#c09129",
  soft_green = "#98971a",
  bright_yellow = "#c8a144",
  orange = "#be6411",
  red = "#b44934",
  error_red = "#953022",
  magenta = "#935463",
  pink = "#a37173",
  light_blue = "#70807d",
  dark_gray = "#73826f",
  blue_gray = "#486c64",
  forest_green = "#607c50",
  clean_green = "#7a955c",
  milk = "#c4b686",
  none = "NONE",
}

the_palette.term = {
  "#282828",
  "#953022",
  "#98971a",
  "#d79921",
  "#486c64",
  "#935463",
  "#607c50",
  "#cec090",
  "#928374",
  "#b44934",
  "#b8bb26",
  "#c8a144",
  "#73826f",
  "#d3869b",
  "#7a955c",
  "#a89984",
}

-- these are backgrounds
the_palette.diff = {
  add = "#26332c",
  change = "#273842",
  delete = "#572E33",
  text = "#314753",
}
M.p = the_palette

local original_palette = vim.tbl_extend("force", the_palette, {
  foreground = "#fbf1c7",
  soft_green = "#b8bb26",
  forest_green = "#b8bb26",
  soft_yellow = "#c8a144",
  light_blue = "#73826f",
  magenta = "#d3869b",
  orange = "#fe8019",
  gray = "#928374",
  comment = "#928374",
})

function M.config(config)
  config = config or require("gruvbox-baby.config")
  local colors
  if config.use_original_palette then
    colors = original_palette
  else
    colors = the_palette
  end

  local intensity_map = {
    ["dark"] = {
      dark = colors.dark0,
      background = colors.background_dark,
      background_dark = util.darken(colors.background_dark, 0.8),
    },
    ["medium"] = {
      background = colors.background,
      background_dark = util.darken(colors.background, 0.9),
    },
    ["soft"] = {
      background = colors.background_light,
      background_dark = util.darken(colors.background_light, 0.8),
      background_light = util.lighten(colors.background_light, 0.95),
    },
    ["soft_flat"] = {
      background = colors.background_light,
      background_dark = colors.background_light,
      background_light = util.lighten(colors.background_light, 0.95),
    },
  }

  local background = config.background_color or colors.background
  if intensity_map[background] then
    colors = vim.tbl_extend("force", colors, intensity_map[background])
  end

  if config.transparent_mode then
    local transparent = {
      background = colors.none,
      background_dark = colors.none,
    }
    colors = vim.tbl_extend("force", colors, transparent)
  end

  if config.color_overrides then
    for override_color, new_color in pairs(config.color_overrides) do
      colors[override_color] = new_color
    end
  end
  return colors
end

return M
