return {
    "NMAC427/guess-indent.nvim",
    {"folke/todo-comments.nvim", event = 'VimEnter', opts = { signs = false }, },
    {"askfiy/smart-translate.nvim",
        cmd = {"Translate"},
        dependencies = {
            "askfiy/http.nvim"
        },
        config  = function()
            require("smart-translate").setup()
        end,
    },
}
