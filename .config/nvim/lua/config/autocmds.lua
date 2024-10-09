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
