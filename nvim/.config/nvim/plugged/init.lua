vim.opt.tabstop=2

--[[

Install the plugins by typing :PlugInstall

--]]

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', { tag = '0.1.0' })

vim.call('plug#end')


vim.keymap.set('n', '<c-p>',"<Cmd>Telescope find_files<CR>")
