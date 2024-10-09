return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup_handlers {
                function (server_name) -- default handler (optional)
                    require("lspconfig")[server_name].setup {}
                end,
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.pyright.setup({
                capabilities = capabilities
            })
            lspconfig.cmake.setup({
                capabilities = capabilities
            })
            vim.keymap.set('n', '<leader>E', vim.diagnostic.goto_prev)
            vim.keymap.set('n', '<leader>e', vim.diagnostic.goto_next)
            vim.keymap.set('n', '<leader>d', vim.lsp.buf.definition)
            vim.keymap.set('n', '<leader>r', vim.lsp.buf.references)
            vim.keymap.set('n', '<leader>o', ":ClangdSwitchSourceHeader<CR>")
            vim.lsp.set_log_level("off")
        end
    },
}
