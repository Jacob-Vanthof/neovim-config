return {
    {
        'lmantw/themify.nvim',
        config =  function()
            require('themify').setup({
                'folke/tokyonight.nvim',
                'rebelot/kanagawa.nvim',
                'EdenEast/nightfox.nvim',
                'rose-pine/neovim',
                'yorumicolors/yorumi.nvim',
                'sainnhe/everforest',
                'sainnhe/gruvbox-material',
                'sainnhe/sonokai',
                'default'
            })
        end,
        lazy = false,
        priority = 999,
    },
}
