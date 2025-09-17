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
    },
}
