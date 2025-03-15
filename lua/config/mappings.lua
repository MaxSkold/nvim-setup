-- Leader
vim.g.mapleader = " "

-- Insert
vim.keymap.set('i', 'jj', '<Esc>')

-- Buffers
vim.keymap.set('n', '<leader>w', ':w<CR>')

-- Navigation
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Splits
vim.keymap.set('n', '<leader>v', ':vsplit<CR>')
vim.keymap.set('n', '<leader>h', ':split<CR>')

vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<leader>Q', ':q!<CR>')
vim.keymap.set('n', '<leader>x', ':x<CR>')
vim.keymap.set('n', '<leader>c', ':close<CR>')

-- Open/Close Tree
vim.keymap.set('n', '<leader>e', ':Neotree left toggle reveal<CR>')
vim.keymap.set('n', '<leader>n', ':Neotree toggle<CR>')
vim.keymap.set('n', '<c-n>', ':Neotree float toggle reveal<CR>')

-- Tabs
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<c-x>', ':BufferLineCloseOthers<CR>')

-- nvim-dap keybindings
vim.keymap.set('n', '<leader>db', ':lua require("dap").toggle_breakpoint()<CR>', { silent = true })                            -- Toggle breakpoint
vim.keymap.set('n', '<leader>dc', ':lua require("dap").continue()<CR>', { silent = true })                                     -- Continue execution
vim.keymap.set('n', '<leader>do', ':lua require("dap").step_over()<CR>', { silent = true })                                    -- Step over
vim.keymap.set('n', '<leader>di', ':lua require("dap").step_into()<CR>', { silent = true })                                    -- Step into
vim.keymap.set('n', '<leader>dx', ':lua require("dap").terminate()<CR>', { silent = true })                                    -- Terminate debugging
vim.keymap.set('n', '<leader>dr', ':lua require("dap").repl.open()<CR>', { silent = true })                                    -- Open REPL
vim.keymap.set('n', '<leader>dt', ':lua require("dap").toggle_breakpoint(vim.fn.input("Condition: "))<CR>',
	{ silent = true })                                                                                                         -- Conditional breakpoint
vim.keymap.set('n', '<leader>dg', ':lua require("dap").continue()<CR>', { silent = true })

vim.keymap.set('n', '<leader>dus', function()
	local widgets = require('dap.ui.widgets')
	-- Используем 'scopes' для отображения переменных
	local sidebar = widgets.sidebar(widgets.scopes)
	sidebar.open()
end, { silent = true, desc = "Open debugging sidebar with local variables" })
