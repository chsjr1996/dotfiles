-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "dracula" -- defaults: onedarker

-- Custom configs
require "user.nvimtree"
require "user.treesitter"
require "user.whichkey"
require "user.autocommands"
require "user.tweaks"
require "user.keybinds"
require "user.bufferline"
require "user.lualine"
require "user.plugins"
require "user.dap"
require "user.formatters"
require "user.linters"

