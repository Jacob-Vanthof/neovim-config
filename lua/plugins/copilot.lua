return {
    {
        "zbirenbaum/copilot.lua",
        opts = {
            suggestion = { enabled = false },
            panel = {
                enabled = false,
            },
            filetypes = {
                markdowns = true,
                help = true,
            },
        },
    },
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        build = "make tiktoken",
        opts = {
            window = {
                width = 0.3,

            },
        },
        config = function ()
            vim.keymap.set('n', '<C-c>', function() require("CopilotChat").toggle({ window = {layout = "float", width = 0.8, height = 0.8, border = "rounded"}}) end, { desc = "Open Copilot Chat" })
        end
    },
}
