-- Line Numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Mouse support
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Console

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Indent Settings
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- Others
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.syntax = "on"
vim.cmd([[autocmd VimEnter * ++once lua require('lazy').sync()]])
vim.cmd [[
  augroup AutoCd
    autocmd!
    autocmd BufEnter * silent! lcd %:p:h
  augroup END
]]


-- Fillchars
vim.opt.fillchars = {
	vert = "▕", -- alternatives │
	fold = " ",
	eob = " ", -- suppress ~ at EndOfBuffer
	diff = "⣿", -- alternatives = ⣿ ░ ─
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
}

