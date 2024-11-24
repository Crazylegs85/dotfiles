local opt = vim.opt

-- Set leader.
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Set path for Python provider.
vim.g.python3_host_prog = "C:\\Users\\Jorge.Manzanarez\\AppData\\Local\\Programs\\Python\\Launcher\\py.exe"

-- [[ Setting options ]]

-- Set numbered rows
opt.number = true

-- No compatible
opt.compatible = false

-- No wrap
opt.wrap = false

-- Enable mouse mode, can be useful for resizing splits for example!
opt.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Decrease update time
opt.updatetime = 250

-- Configure how new splits should be opened
opt.splitright = true
opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
-- opt.cursorline = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.ignorecase = true
opt.smartcase = true

-- Indentation settings for using 4 spaces instead of tabs.  Do not change
-- 'tabstop' from its default value of 8 with this setup.
opt.shiftwidth=4
opt.softtabstop=4
opt.expandtab = true
opt.encoding="utf-8"
opt.textwidth=80

-- Set terminal colors.
opt.termguicolors = true

-- Set colorscheme
vim.cmd([[colorscheme desert]])
