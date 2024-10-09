return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')
    end
}
