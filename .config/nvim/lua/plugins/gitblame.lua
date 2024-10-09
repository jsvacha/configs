return {
    "f-person/git-blame.nvim",
    config = function()
        require("gitblame").setup {
            enable = false,
            vim.keymap.set('n', '<leader>b', ':GitBlameToggle<CR>')
        }
    end
}
