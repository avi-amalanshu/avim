vim.g.mapleader = " "
local km = vim.keymap
local lsp = vim.lsp
--local dap = vim.dap
local bufopts = { noremap = true, silent = true }

-- misc
km.set("n", "<leader>nh", ":nohl<CR>")
km.set("n", "<leader>+", "<C-a>")
km.set("n", "<leader>-", "<C-x>")

-- split
--  <SPACE> + <SHIFT> + > to open a split to the right
--  <SPACE> + v to open a split to the bottom
--  <SPACE> + x to close the current split
--  <SPACE> + = to equalize the sizes of the vertical split
km.set("n", "<leader>>", "<C-w>v")
km.set("n", "<leader>v", "<C-w>s")
km.set("n", "<leader>=", "<C-w>=")
km.set("n", "<leader>x", ":close<CR>")

--  split resizing
--      <SPACE> +  to decrease width
--      <SPACE> + <UPARROW> to increase height
--      <SPACE> + <RIGHTARROW> to increase width
--      <SPACE> + <DOWNARROW> to decrease height
--      <num> + <SPACE> + sh to set height to <num>
--      <num> + <SPACE> + sw to set width to <num>
km.set("n", "<leader><Up>", "<C-w>+")
km.set("n", "<leader><Down>", "<C-w>-")
km.set("n", "<leader><Left>", "<C-w>>")
km.set("n", "<leader><Right>", "<C-w><")
km.set("n", "<leader>sh","<C-w>_")
km.set("n", "<leader>sw","<C-w>|")

--   split navigation     
--      <SPACE> + w to switch to upper pane
--      <SPACE> + a to switch to left pane
--      <SPACE> + s to switch to lower pane
--      <SPACE> + d to switch to right pane
km.set("n", "<leader>w", "<C-w>k")
km.set("n", "<leader>a", "<C-w>h")
km.set("n", "<leader>s", "<C-w>j")
km.set("n", "<leader>d", "<C-w>l")

-- nvim-tree
--  <SPACE> + < to toggle tree
--  <SPACE> + e to focus on tree
km.set("n", "<leader><", ":NvimTreeToggle<CR>")
km.set("n", "<leader>e", ":NvimTreeFocus<CR>")

-- tabs
--  <SPACE> + t + o to open a new tab
--  <SPACE> + t + x to close the current tab
--  <SPACE> + t + n to move to the tab to the right
--  <SPACE> + t + p to move to the tab to the left
km.set("n", "<leader>to", ":tabnew<CR>")
km.set("n", "<leader>tx", ":tabclose<CR>")
km.set("n", "<leader>tn", ":tabn<CR>")
km.set("n", "<leader>tp", ":tabp<CR>")

-- lsp
--  <SPACE> + r for references
--  <SPACE> + u for definition
--  <SPACE> + n for rename
--  <SPACE> + k for hover
--  <SPACE> + f for func
km.set("n", "<leader>r", lsp.buf.references, bufopts)
km.set("n", "<leader>u", lsp.buf.definition, bufopts)
km.set("n", "<leader>n", lsp.buf.rename, bufopts)
km.set("n", "<leader>k", lsp.buf.hover, bufopts)
km.set("n", "<leader>f", function()
    require("conform").format({async=true, lsp_fallback=true})
end, bufopts)

-- dap
--  <SPACE> + <SPACE> + b to add/remove brkpt
--  <SPACE> + <SPACE> + c to continue
--  <SPACE> + <SPACE> + r to run to cursor
--  <SPACE> + <SPACE> + q to quit debugger
km.set("n", "<leader><leader>b", function()
    require("dap").toggle_breakpoint()
end, bufopts)
km.set("n", "<leader><leader>c", function()
    require("dap").continue()
end, bufopts)
km.set("n", "<leader><leader>r", function()
    require("dap").run_to_cursor()
end, bufopts)
km.set("n", "<leader><leader>q", function()
    require("dap").terminate()
end, bufopts)


-- LazyGit
km.set("n", "<leader>lg", "<Cmd>LazyGit<CR>")
