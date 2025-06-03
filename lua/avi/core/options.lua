local opt = vim.opt
local dap = require('dap')

-- line numbers
opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true


opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true
--opt.termguicolors = true
opt.background = "light"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

