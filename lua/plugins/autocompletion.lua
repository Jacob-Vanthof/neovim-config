return {
    'saghen/blink.cmp',
    event  = 'VimEnter',
    version = '1.*',
    dependencies = {
        {
            -- Snippet engine setup
            'L3MON4D3/LuaSnip',
            version = '2.*',
            build  = (function()
                -- Build so that we have regex support
                if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
                    return
                end
                return 'make install_jsregexp'
            end)(),
            dependencies = {
                {
                    'rafamadriz/friendly-snippets',
                    config  = function()
                        require('luasnip.loaders.from_vscode').lazy_load()
                    end,
                },
            },
        },
        'folke/lazydev.nvim'
    },

    opts = {
        -- Default keymap set
        keymap = { preset = 'enter'}
    },
    -- Set sources for cmp
    sources = {
        default = {'lsp', 'path', 'snippets', 'lazydev', 'buffer'},
        providers = {
            lazydev = { module = 'lazydev.integration.blink', score_offset = 100 },
        },
    },
    -- Set preset snippets
    snippets = { preset = 'luasnip' },

    -- Dont autoshow documentation
    completion = { documentation = {auto_show = false } },

    -- Enable the rust fuzzy finder
    fuzzy = { implementation = 'lua' },

    -- Shows window when typing functions for arguments
    signature = { enabled = true },
}
