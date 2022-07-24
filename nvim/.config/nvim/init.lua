local set = vim.opt
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true
set.number = true

--[[

Install the plugins by typing :PlugInstall

--]]

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })
Plug('catppuccin/nvim', { as = "catppuccin" })

vim.call('plug#end')


vim.keymap.set('n', '<c-p>',"<Cmd>Telescope find_files<CR>")
