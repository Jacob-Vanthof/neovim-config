-- Set inital formatting options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Set minimal number of screen lines to keep above or below the cursor
vim.o.scrolloff = 10

-- Show the line number
vim.o.number = true

-- Save undo history
vim.o.undofile = true

-- Use smart detection for case
vim.o.ignorecase = true
vim.o.smartcase = true

-- Switch dialog warning to confirmation
vim.o.confirm = true

-- Make sure that space is the leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("config.lazy")
