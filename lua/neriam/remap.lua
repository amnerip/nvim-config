-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gkzz' : 'kzz'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gjzz' : 'jzz'", { expr = true, silent = true })

-- Remap to use less keys to switch between panes
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Keep window centered when scrolling up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
vim.keymap.set("n", "G", "Gzz")

-- Get to explore pane quickly
vim.keymap.set({ 'n', 'v' }, '<leader>pe', vim.cmd.Ex)

-- Personal git shortcuts
vim.keymap.set({ 'n', 'v' }, '<leader>gd', '<leader><Cmd>Gvdiffsplit<CR>',
  { desc = 'Open [g]it [d]iff view of current file.' })

-- Autoformat command
vim.keymap.set({ 'n' }, '<leader>f', [[:lua vim.lsp.buf.format()<cr> <bar> :%s/\s\+$//e<cr>]],
  { desc = '[f]ormat the current file' })
