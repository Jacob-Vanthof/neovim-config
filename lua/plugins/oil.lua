-- Function to retrieve the current directory
-- Declare a global function to retrieve the current directory
function _G.get_oil_winbar()
  local bufnr = vim.api.nvim_win_get_buf(vim.g.statusline_winid)
  local oil = require("oil")
  local dir = oil.get_current_dir(bufnr)
  local cwd = vim.fn.getcwd()
  local path = dir or vim.api.nvim_buf_get_name(0)
  -- Simulate multi-line with separators
  return table.concat({
    "oil.nvim",
    "CWD: " .. vim.fn.fnamemodify(cwd, ":~"),
  }, " | ")
end



return {
    {
        'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            win_options = {
                winbar = "%!v:lua.get_oil_winbar()",
            },
            keymaps = {
                ["<C-t>"] = false,
            },
        },
        dependencies = {
            {
                "nvim-mini/mini.icons",
                opts = {},
            },
        },
        lazy = false,
    },
}
