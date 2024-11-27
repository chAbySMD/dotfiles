-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom_colored",
  },

  telescope = { style = "borderless" }, -- borderless / bordered

  statusline = {
    theme = "vscode_colored",
    separator_style = "arrow",
  },

  tabufline = {
    enabled = true,
    lazy_load = true,
    order = { "treeOffset", "buffers" },
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "██████╗ ██╗   ██╗██████╗ ██████╗ ██╗     ███████╗",
      "██╔══██╗██║   ██║██╔══██╗██╔══██╗██║     ██╔════╝",
      "██████╔╝██║   ██║██████╔╝██████╔╝██║     █████╗  ",
      "██╔═══╝ ██║   ██║██╔══██╗██╔═══╝ ██║     ██╔══╝  ",
      "██║     ╚██████╔╝██║  ██║██║     ███████╗███████╗",
      "╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚══════╝╚══════╝",
    },
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    DiffChange = {
      bg = "#464414",
      fg = "none",
    },
    DiffAdd = {
      bg = "#103507",
      fg = "none",
    },
    DiffRemoved = {
      bg = "#461414",
      fg = "none",
    },
  },
}

M.base64 = {
  transparency = true,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    DiffChange = {
      bg = "#464414",
      fg = "none",
    },
    DiffAdd = {
      bg = "#103507",
      fg = "none",
    },
    DiffRemoved = {
      bg = "#461414",
      fg = "none",
    },
  },
}

return M
