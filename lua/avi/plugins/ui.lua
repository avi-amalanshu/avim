return {
  --{
    --"Mofiqul/dracula.nvim",
    --lazy = false,
    --priority = 1000,
    --config = function()
      --vim.o.background = "dark"
    --  vim.cmd([[colorscheme dracula]])
    --end,
  --},
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    config = function()
        require("nvim-tree").setup {}
    end,
  },
}
