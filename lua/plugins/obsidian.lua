return {
	"epwalsh/obsidian.nvim",
	version = "*",
	lazy = true,
	event = {
		-- vim.fn.expand needed here to expand "~".
		-- These events make it so that the obsidian.nvim plugin is only loaded in the vault.
		"BufReadPre "
			.. vim.fn.expand("~")
			.. "/git/wiki/**.md",
		"BufNewFile " .. vim.fn.expand("~") .. "/git/wiki/**.md",
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
			enable = false,
		},
		["gf"] = {
			action = function()
				return require("obsidian").util.gf_passthrough()
			end,
			opts = { noremap = false, expr = true, buffer = true },
		},
		note_id_func = function(title)
			return title
		end,
	},
}
