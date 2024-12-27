-- Remember folds
local foldgroup = vim.api.nvim_create_augroup('remember_folds', { clear = true })
vim.api.nvim_create_autocmd ({'BufWinLeave'}, {
    pattern = {"*"},
    group = foldgroup,
    command = "silent! mkview",
})
vim.api.nvim_create_autocmd ({'BufWinEnter'}, {
    pattern = {"*"},
    group = foldgroup,
    command = "silent! loadview",
})

-- 2 space indent for cpp files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.tabstop = 2
    end
})
