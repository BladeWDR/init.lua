return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  event = {
    -- vim.fn.expand needed here to expand "~".
    -- These events make it so that the obsidian.nvim plugin is only loaded in the vault. 
    "BufReadPre " .. vim.fn.expand "~" .. "/git/wiki/**.md",
    "BufNewFile " .. vim.fn.expand "~" .. "/git/wiki/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",

  },
  opts = {
    workspaces = {
      {
        name = "wiki",
        path = "~/git/wiki",
      },
    },
    ui = {
        enable = false
    },
    mappings = {
     ["<leader>on"] = {
      action = function()
        return ":ObsidianNew <CR>"
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    },
    notes_subdir = ".",
    -- this function overrides the default behavior of note_id_func, which is to add the date timestamp and 4 random characters to build the filename.
    -- Instead, this just takes whatever you put as the argument for :ObsidianNew and uses that as the filename.
    note_id_func = function(title)
        return title
    end,
    new_notes_location = "current_dir",
  },
}
