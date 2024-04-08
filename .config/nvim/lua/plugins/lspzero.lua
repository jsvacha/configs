return {
    "VonHeikemen/lsp-zero.nvim",
    branch = 'v3.x', 
    dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/nvim-cmp',
        'L3MON4D3/LuaSnip',
    },
    config = function()
        local lsp_zero = require('lsp-zero')
        lsp_zero.on_attach(function(client, bufnr)
            lsp_zero.default_keymaps({buffer = bufnr})
        end)
        require('lspconfig').clangd.setup({})
        vim.keymap.set('n', '<leader>o', ":ClangdSwitchSourceHeader<CR>")
    end
}
