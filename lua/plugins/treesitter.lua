return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
      -- "neovim/tree-sitter-vimdoc",
    },
    config = function()
      -- import nvim-treesitter plugin
      local treesitter = require("nvim-treesitter.configs")

      -- configure treesitter
      treesitter.setup({ -- enable syntax highlighting
        highlight = {
          enable = true,
        },
        -- enable indentation
        indent = { enable = false },
        -- enable autotagging (w/ nvim-ts-autotag plugin)
        autotag = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          -- "help",
          "hcl",
          "yaml",
          "markdown",
          "markdown_inline",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
          "vimdoc",
          "jsonc",
        },
        -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
        -- auto install above language parsers
        sync_install = false,
        auto_install = true,
        additional_vim_regex_highlighting = false,
      })
            local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
            parser_config.powershell = {
                install_info = {
                    url = "https://github.com/jrsconfitto/tree-sitter-powershell",
                    files = {"src/parser.c"}
                },
                filetype = "ps1",
                used_by = { "psm1", "psd1", "pssc", "psxml", "cdxml" }
            }
    end,
  },
  {
      "nvim-treesitter/nvim-treesitter-context",
  }
}

