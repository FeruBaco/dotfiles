vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit')

-- split windows
keymap.set("n", "sv", "<C-w>v")
keymap.set("n", "ss", "<C-w>s")
-- keymap.set("n", "se", "<C-w>=")
keymap.set("n", "sx", ":close<CR>")

-- keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
-- keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
-- keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- nvim-tree
keymap.set('n', '<Space>b', ':NvimTreeToggle<CR>')

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") 
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") 
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") 
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
