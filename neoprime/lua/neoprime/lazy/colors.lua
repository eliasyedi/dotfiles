

return {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000 ,

		config = function()
			local catppuccin = require("catppuccin").setup({
				integrations = {
					cmp = true,
					gitsigns = true,
					nvimtree = true,
					treesitter = true,
					notify = false,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
				},
				color_overrides = {
					all = {
						text = "#ffffff",
					},
					latte = {
						base = "#ff0000",
						mantle = "#242424",
						crust = "#474747",
					},
					frappe = {},
					macchiato = {},
					mocha = {},
				},
			})
			vim.cmd.colorscheme "catppuccin"
	        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

		end
}

