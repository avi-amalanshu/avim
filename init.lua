-- nvim-tree: disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- load config
require("avi.lazy")
require("avi.core.options")
require("avi.core.keymaps")
require("avi.core.colorscheme")

-- -----------------------------------------------------------------------
-- nvim-tree configuration
-- -----------------------------------------------------------------------

-- optionally enable 24-bit colour
--vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})


