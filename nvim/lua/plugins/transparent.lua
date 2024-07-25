return {
  "xiyaowong/transparent.nvim",
  config = function()
    require('transparent').clear_prefix('NeoTree')
    -- require('transparent').clear_prefix('lualine')
    require('transparent').setup({
      extra_groups = {
        --"NormalFloat",
        "NvimTreeNormal"
      },
    })
  end
}
