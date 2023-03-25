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

-- quick config changes for this file
vim.keymap.set('n', '<leader>ev', ':vs ~/.config/nvim/after/plugin/defaults.lua<cr>', opts)
vim.keymap.set('n', '<leader>sv', ':so ~/.config/nvim/after/plugin/defaults.lua<cr>', opts)

local options = {

	-- vim things
	smartcase = true,
	swapfile = false,
	writebackup = false,

	-- tabs, spaces
	expandtab = true,
	shiftwidth = 2,
	smartindent = true,
	softtabstop = 2,
	tabstop = 2,

	-- folds
	foldenable = false,
	foldlevel = 2,
	foldmethod = 'indent',
	foldnestmax = 10,

	-- splits
	splitbelow = true,
	splitright = true,

	-- appearance
	cursorline = true,

	number = false, -- numbers off til you need'em (also not taking?)
	hlsearch = true, -- highlight in-buffer searches  (this is not taking for some reason)

  -- these are off by default as-is, but handy
  -- to explicitly set as we're re-sourcing this document
	relativenumber = false,
}

for k, v in pairs(options) do vim.opt[k] = v end

vim.cmd [[
	color nord
]]

