return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        'nvim-treesitter/nvim-treesitter-context',
    },
    build = ":TSUpdate",
    lazy = false,
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            auto_install = true,
            ensure_installed = {"c", "cpp", "cmake", "lua", "python"},
            highlight = { enable = true },
            vim.keymap.set('n', '<leader>c', ':TSContextToggle<CR>')
        })
    end
}
