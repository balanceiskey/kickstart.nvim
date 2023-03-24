-- KEY BINDINGS

-- remap leader to ,
vim.g.mapleader = ","
vim.g.maplocalleader = ","

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- Neotree
vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left toggle<CR>', opts)

-- Pane Switching
vim.keymap.set('n', '<S-H>', '<C-w>h', opts)
vim.keymap.set('n', '<S-L>', '<C-w>l', opts)
vim.keymap.set('n', '<S-K>', '<C-w>k', opts)
vim.keymap.set('n', '<S-J>', '<C-w>j', opts)

-- " CLEAR SEARCH
-- noremap <silent> <leader>m :noh<cr>
--
-- " QUICK VIMRC CHANGES
-- noremap <leader>sv :source $MYVIMRC<cr>
-- noremap <leader>ev :vsplit $MYVIMRC<cr>
--
-- noremap <leader>n :NERDTreeToggle<cr>
-- noremap <leader>f :NERDTreeFind<cr>
--
-- " redraw
-- noremap <leader>r :redraw!<cr>
--
-- " toggle indents
-- noremap <leader>t :IndentLinesToggle<cr>
--
--
