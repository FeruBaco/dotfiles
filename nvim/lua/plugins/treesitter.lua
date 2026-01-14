return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- config = function()
  --   require("nvim-treesitter.configs").setup({
  --     auto_install = true,
  --     -- ensure_installed = { "lua", "javascript", "vim", "vimdoc", "luadoc" },
  --     highlight = { enable = true },
  --     indent = { enable = true },
  --   })
  -- end
}
