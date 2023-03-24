-- KEY BINDINGS

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

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

-- clear search
vim.keymap.set('n', '<leader>m', ':set hlsearch!<cr>', opts)

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

local options = {

	-- vim things
	swapfile = false,
	writebackup = false,
	smartcase = true,

	-- tabs, spaces
	expandtab = true,
	tabstop = 2,
	shiftwidth = 2,
	softtabstop = 2,
	smartindent = true,
	
	-- folds
	foldmethod = 'indent',
	foldnestmax = 10,
	foldenable = false,
	foldlevel = 2,

	-- appearance
	cursorline = true,

	number = false, -- numbers off til you need'em (also not taking?)
	hlsearch = true, -- highlight in-buffer searches  (this is not taking for some reason)
}


for k, v in pairs(options) do vim.opt[k] = v end

