vim.g.mapleader = ","
vim.g.maplocalleader = ","

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left toggle<CR>', { noremap = true, silent=true})
