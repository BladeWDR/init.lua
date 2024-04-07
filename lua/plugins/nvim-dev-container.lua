return {
    'https://codeberg.org/esensar/nvim-dev-container',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    opts = {
        autocommands = {
            init = false,
            clean = true,
            update = true,
        },
        log_level = "debug",
        neovim_data = {
            -- enables mounting local data to /root/.local/share/nvim in container
            enabled = true,
            -- no options by default
            options = {}
        },
        -- Only useful if using neovim 0.8.0+
        neovim_state = {
            -- enables mounting local state to /root/.local/state/nvim in container
            enabled = true,
            -- no options by default
            options = {}
        },
    },
    -- config = function()
    --     local commands = require("devcontainer")
    --     vim.api.nvim_create_user_command("DevcontainerStartAndAttach", function()
    --         commands.start_auto(nil, true)
    --     end, {
    --             nargs = 0,
    --         })
    --end
}
