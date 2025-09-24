-- Enable clangd
vim.lsp.enable('clangd')

vim.keymap.set('n', '<leader>sx', "<cmd>LspClangdSwitchSourceHeader<cr>", {desc = "[S]witch Header <-[X]-> Source"})

-- Enable lua ls
vim.lsp.enable('lua_ls')


