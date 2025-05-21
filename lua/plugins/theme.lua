return {
    -- Current default theme TODO: Switch this for an easy swap sometime.
    {'folke/tokyonight.nvim', config = function()
        require('tokyonight').setup {
            styles = {
                comments = { italic = false},
            },
        }

        vim.cmd.colorscheme 'tokyonight-night'
    end,},
    {'rebelot/kanagawa.nvim'},
    {'EdenEast/nightfox.nvim'},
    {'daltonmenezes/aura-theme'},
    {'rose-pine/neovim'},
    {'yorumicolors/yorumi.nvim'},

}
