return {
    {
        "ravitemer/mcphub.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        build = "npm install -g mcp-hub@latest",  -- Installs `mcp-hub` node binary globally
        config = function()
            require("mcphub").setup({
                extensions = {
                    -- Add the copilot extension
                    copilotchat = {
                        enabled = true,
                        covert_tools_to_functions = true,
                        convert_resources_to_functions = true,
                        add_mcp_prefex = false,
                    },
                },
            })
        end
    }
}
