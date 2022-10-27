local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

vim.opt.termguicolors = true

bufferline.setup({
	options = {
		mode = "tabs",
		show_buffer_close_icons = false,
		color_icons = true,
		indicator = {
			icon = "▎",
			style = "icon",
		},
		diagnostics = "nvim_lsp",
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
