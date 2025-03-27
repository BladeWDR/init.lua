return {
    {
        "kevinhwang91/nvim-ufo",
        dependencies = { "kevinhwang91/promise-async" },
        config = function()

            vim.keymap.set("n", "zR", require("ufo").openAllFolds)
            vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

            require("ufo").setup({
                provider_selector = function(bufnr, filetype, buftype)
                    return { "treesitter", "indent" }
                end
            })
        end,
    },
    {
        "neoclide/coc.nvim",
        branch = "master",
        build = "yarn install --frozen-lockfile",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.foldingRange = {
                dynamicRegistration = false,
                lineFoldingOnly = true,
            }
            
            local lspconfig = require("lspconfig")
            for _, ls in ipairs(vim.lsp.get_clients()) do
                lspconfig[ls].setup({ capabilities = capabilities })
            end
        end,
    },
}

