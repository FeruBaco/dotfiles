return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"emmet_ls",
          "html",
          "cssls",
          'tailwindcss'
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config('lua_ls', {})
			vim.lsp.config('ts_ls', {
				-- on_attach = function(client)
				-- 	client.resolved_capabilities.document_formatting = false
				-- end,
			})

			vim.lsp.enable('lua_ls')
			vim.lsp.enable('ts_ls')

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
