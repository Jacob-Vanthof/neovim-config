return {
    -- Current default theme TODO: Switch this for an easy swap sometime.
    {'folke/tokyonight.nvim'},
    {'rebelot/kanagawa.nvim'},
    {'EdenEast/nightfox.nvim'},
    {
        'baliestri/aura-theme',
        lazy = false,
        config  = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
        end,
    },
    {'rose-pine/neovim'},
    {'yorumicolors/yorumi.nvim'},
    {'sainnhe/everforest'},
    {'sainnhe/gruvbox-material'},
    {'sainnhe/sonokai'},
    {
        'zaldih/themery.nvim',
        lazy = false,
        config = function()
            local custom_themes = {
              -- rebelot/kanagawa.nvim
              "kanagawa",
              "kanagawa-wave",
              "kanagawa-dragon",
              "kanagawa-lotus",
            
              -- EdenEast/nightfox.nvim
              "nightfox",
              "dayfox",
              "dawnfox",
              "duskfox",
              "nordfox",
              "terafox",
              "carbonfox",
            
              -- daltonmenezes/aura-theme
              "aura-dark",
              "aura-dark-soft-text",
              "aura-soft-dark",
              "aura-soft-dark-soft-text",
            
              -- rose-pine/neovim
              "rose-pine",
              "rose-pine-main",
              "rose-pine-moon",
              "rose-pine-dawn",
            
              -- yorumicolors/yorumi.nvim
              "yorumi",
              "yorumi-abyss",
              
              -- folke/tokyonight.nvim
              "tokyonight",
              "tokyonight-night",
              "tokyonight-storm",
              "tokyonight-day",
              "tokyonight-moon",
              
              -- gruvbox-material
              {
                name = "gruvbox-material",
                colorscheme = "gruvbox-material",
                before = [[
                  vim.opt.background="dark"
                  vim.g.gruvbox_material_background="soft"
                ]]
              },
              {
                name = "gruvbox-material-light",
                colorscheme = "gruvbox-material",
                before = [[
                  vim.opt.background="light"
                  vim.g.gruvbox_material_background="soft"
                ]],
                after = [[
                  vim.opt.background="light"
                ]]
              },

              -- Default themes
              "blue",
              "default",
              "delek",
              "desert",
              "elflord",
              "evening",
              "habamax",
              "industry",
              "koehler",
              "lunaperche",
              "morning",
              "murphy",
              "pablo",
              "peachpuff",
              "quiet",
              "retrobox",
              "quiet",
              "retrobox",
              "ron",
              "shine",
              "slate",
              "sorbet",
              "torte", 
              "unokai",
              "vim",
              "wildcharm",

            }

            require('themery').setup({
                livePreview = true,
                themes = custom_themes,
            })
        end,
    },
}
