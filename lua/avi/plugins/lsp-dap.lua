vim.diagnostic.config({ virtual_text = false })
vim.diagnostic.open_float()
return {
    -- lsp
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- "mrcjkb/rustaceanvim",
            {
                "williamboman/mason-lspconfig.nvim",
                dependencies = {
                    "williamboman/mason.nvim",
                    opts = {
                        ui = { border = "single" },
                        PATH = "append",
                    },
                    config = function(_, opts) require('mason').setup(opts) end,
                },
            },
            --"yioneko/nvim-vtsls",
            {
                "mrcjkb/haskell-tools.nvim",
                version = '^3',
                lazy = false,
            },
            'https://git.sr.ht/~p00f/clangd_extensions.nvim',
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "clangd",       -- C++
                    "pylyzer",      -- Python
                    "hls",          -- Haskell
                    "lua_ls",       -- Lua
                    "ocamllsp",     -- OCaml
                },
                automatic_installation = true,
            })
            local lspconfig = require("lspconfig")
        end,
        on_attach = function()
            vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end, opts)
        end,
    },
    -- dap
    {
        "mfussenegger/nvim-dap",
        lazy = true,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            handlers = {},
        },
        automatic_installation = true,
        dependencies = {
            "mfussenegger/nvim-dap",
            "williamboman/mason.nvim",
        },
        ensure_installed = {
            'python',
            'lldb',
            'haskell',
        },
    },
    { 
        'rcarriga/nvim-dap-ui', 
        dependencies = {
            "mfussenegger/nvim-dap", 
            "nvim-neotest/nvim-nio"
        },
    },
    'cohama/lexima.vim',
}

