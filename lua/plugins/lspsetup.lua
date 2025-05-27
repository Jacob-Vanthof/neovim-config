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
        end,
    }
}
