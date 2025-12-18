return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup({
      window = {
        position = "right",
        --mappings = {
        --  ["<C-b>"] = "close"
        --},
      },
      event_handlers = {
        {

          event = "file_open_requested",
          handler = function()

            require('neo-tree.command').execute({ action = 'close' })

          end
        }
      }
    })
    vim.keymap.set('n', '<C-b>', ':Neotree toggle<CR>', { noremap = true, silent = true})
  end
}
