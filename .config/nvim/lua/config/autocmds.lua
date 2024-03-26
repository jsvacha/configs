local foldgroup = vim.api.nvim_create_augroup('remember_folds', { clear = true })
vim.api.nvim_create_autocmd ({'BufWinLeave'}, {
    pattern = {"*"},
    group = foldgroup,
    command = "mkview",
})
vim.api.nvim_create_autocmd ({'BufWinEnter'}, {
    pattern = {"*"},
    group = foldgroup,
    command = "silent! loadview",
})

vim.lsp.start({
  name = 'clangd-server',
  cmd = {'clangd'},
  root_dir = vim.fs.dirname(vim.fs.find({'CMakeLists.txt'}, 
    { upward = true })[1]),
})

