return {
    {
        "rmagatti/auto-session",
        lazy = false,

        ---Enables autocomplete for opts
        ---@module "auto-session"
        ---@type AutoSession.Config
        opts = {
            suppressed_dirs = { "~/.cache", "~/Downloads", "~/Documents" },
        },
    },
}
