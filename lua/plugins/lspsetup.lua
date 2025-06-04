return {
    {"neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.clangd.setup({
                cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
                init_options = {
                    fallbackFlags = 'std=c++17'
                },
            })

            vim.keymap.set('n', '<leader>sx', "<cmd>ClangdSwitchSourceHeader<cr>", {desc = "[S]witch Header <-[X]-> Source"})
        end,
    }
}
