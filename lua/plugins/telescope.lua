return {
    {"nvim-telescope/telescope.nvim",
        -- Trigger things when we enter normal mode in vim
        event  = 'VimEnter',
        -- This is where I can set plugins and configure them.
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- Add fuzzy finder plugin
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                build  = 'make',
            },
            'nvim-telescope/telescope-ui-select.nvim',
            'molecule-man/telescope-menufacture',
            'nvim-telescope/telescope-file-browser.nvim',
        },
        config  = function()
            require('telescope').setup {
                -- Setup defaults
                -- Setup extensions
                extensions = {
                    -- Setup a ui-select
                    ['ui-select'] = {
                        require('telescope.themes').get_dropdown(),
                    },
                    -- Setup telescope-file-browser
                    ['file_browser'] = {
                        depth = 2,
                        auto_depth = false,
                        hidden = { folder_browser = true },
                        layout_strategy = 'horizontal',
                        layout_config = {
                            prompt_position = 'top',
                        },
                        sorting_strategy = 'ascending',
                        border = true,
                        borderchars = {
                            prompt  = { "─", "│", "─", "│", "┌", "┬", "┤", "├" },
                            results = { " ", "│", "─", "│", "│", "│", "┴", "└" },
                            preview = { "─", "│", "─", " ", "─", "┐", "┘", "─" },
                        },
                    },
                },
            }
            -- Enable telescope extensions
            pcall(require('telescope').load_extension, 'fzf')
            pcall(require('telescope').load_extension, 'ui-select')
            pcall(require('telescope').load_extension, 'lsp')
            pcall(require('telescope').load_extension, 'file-browser')

            -- Setup leader binds
            local builtin = require 'telescope.builtin'
            vim.keymap.set('n', '<leader>sf', require('telescope').extensions.menufacture.find_files, { desc = '[S]earch [F]iles' })
            vim.keymap.set('n', '<leader>sw', require('telescope').extensions.menufacture.grep_string, { desc = '[S]earch current [W]ord' })
            vim.keymap.set('n', '<leader>sg', require('telescope').extensions.menufacture.live_grep, { desc = '[S]earch by [G]rep' })
            vim.keymap.set('n', '<leader>s.', require('telescope').extensions.menufacture.live_grep, { desc = '[S]earch Recent Files ("." for repeat)' })
            vim.keymap.set('n', '<leader>fb', require('telescope').extensions.file_browser.file_browser, { desc = '[S]earch [B]rowse Files' })
            vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
            vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
            vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
            vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
            vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
            vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

            -- LSP builtin bindings
            vim.keymap.set('n', 'gO', builtin.lsp_document_symbols, { desc = 'Open Document Symbols'})
            vim.keymap.set('n', 'gW', builtin.lsp_dynamic_workspace_symbols, { desc = 'Open Workspace Symbols'})
            vim.keymap.set('n', 'grn', vim.lsp.buf.rename, { desc = '[R]e[n]ame'})
            vim.keymap.set('n', 'grf', vim.diagnostic.open_float, { desc = "Open the Diagnostic Float"})
            vim.keymap.set('n', 'grd', builtin.lsp_definitions, { desc = '[G]oto [D]efinition'})
            vim.keymap.set('n', 'gri', builtin.lsp_implementations, { desc = '[G]oto [I]mplementation'})
            vim.keymap.set('n', 'grr', builtin.lsp_references, { desc = '[G]oto [R]eferences'})
            vim.keymap.set({"n", "x"}, 'gra', builtin.lsp_definitions, { desc = '[G]oto Code [A]ction'})
            -- Setup an overide for some of the behavior
            vim.keymap.set('n', '<leader>/', function()
                -- You can pass additional configuration to Telescope to change the theme, layout, etc.
                builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                    winblend = 10,
                    previewer = false,
                })
            end, { desc = '[/] Fuzzily search in current buffer' })

            -- Setup live grep for the local search
            vim.keymap.set('n', '<leader>s/', function()
                builtin.live_grep {
                    grep_open_files = true,
                    prompt_title = 'Live Grep in Open Files',
                }
            end, { desc = '[S]earch [/] in Open Files' })
        end,
    },
}
