local status, dracula = pcall(require, "dracula")
if not status then
 print("Colorscheme not found")
  return
end

dracula.setup({
  transparent_bg = true,
  lualine_bg_color = '#44475a',
  italic_comment = true
})

vim.cmd[[colorscheme dracula]]
