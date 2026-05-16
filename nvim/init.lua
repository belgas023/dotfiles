-- general options
vim.o.number = true -- line number
vim.o.relativenumber = true -- relative line number
vim.o.swapfile = false -- deactivate temprary swap file
vim.o.wrap = false -- deactivate line wrapping
vim.o.scrolloff = 8 -- line after and beafore cursos
vim.o.termguicolors = true --color fix
vim.o.tabstop = 4 -- indentation
vim.o.autoindent = true -- auto indetantion
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.cmdheight = 1
vim.o.laststatus = 3



-- plugin management
vim.pack.add {
				'https://github.com/nvim-mini/mini.icons', -- icons
				'https://github.com/saghen/blink.cmp', -- auto completion
				'https://github.com/neovim/nvim-lspconfig', -- official lsp plugin
				'https://github.com/vague-theme/vague.nvim', -- colorscheme
				'https://github.com/nvim-lualine/lualine.nvim', -- bar
				'https://github.com/nvim-mini/mini.pick' -- fzf/file switcher
}

vim.lsp.enable({"lua_ls"})
vim.cmd('colorscheme vague')
require('lualine').setup()
require('mini.pick').setup()
require('mini.icons').setup()
--require('blink.cmp').setup({
				--keymap = { preset = default },
				--appearence = { nerd_font_variant = 'mono'},
				--completion = { documentation = { auto_show = false }	},
				--sources = { default = {'lsp', 'path', 'snippets', 'buffer'}},
				--fuzzy = { implementation = "prefer_rust"}
--})


-- keymaps
vim.keymap.set('n', 'Q', '<cmd>Pick files<CR>')

