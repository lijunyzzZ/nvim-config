-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------
local keymap = vim.keymap;
-- Hint: see `:h vim.map.set()`
-- Better window navigation
keymap.set('n', '<C-h>', '<C-w>h', opts)
keymap.set('n', '<C-j>', '<C-w>j', opts)
keymap.set('n', '<C-k>', '<C-w>k', opts)
keymap.set('n', '<C-l>', '<C-w>l', opts)
keymap.set('n', '<leader>sv', '<C-w>v',opts)
keymap.set('n', '<leader>sh', '<C-w>s',opts)

-- Resize with arrows
-- delta: 2 lines
keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-----------------
-- Insert mode --
-----------------
keymap.set('i', 'jk', "<Esc>")

-----------------
-- file search --
-----------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

