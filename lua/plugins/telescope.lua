return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'sharkdp/fd',
        },

        config = function()
            local builtin = require("telescope.builtin")
            -- keymaps here
            vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
            vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
            vim.keymap.set('n', 'c-p', builtin.git_files, {})
            vim.keymap.set('n', 'gd', builtin.lsp_definitions, { desc = '[G]oto [D]efinition'})
            vim.keymap.set('n', 'gr', builtin.lsp_references, { desc = '[G]oto [R]eferences'})
            vim.keymap.set('n', 'gI', builtin.lsp_implementations, { desc = '[G]oto [I]mplementation'})
            vim.keymap.set('n', '<leader>D', builtin.lsp_type_definitions, { desc = 'Type [D]efinition'})
            vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = '[D]ocument [S]ymbols'})
            vim.keymap.set('n', '<leader>ws', builtin.lsp_dynamic_workspace_symbols, { desc = '[W]orkspace [S]ymbols'})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                    }
                }
            })
            require("telescope").load_extension("ui-select")
        end
    }
}
