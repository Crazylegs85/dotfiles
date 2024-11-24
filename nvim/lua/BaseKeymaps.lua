local SetKeymap = function(mode, leftHandKeys, rightHandKeys, description)
    vim.keymap.set(mode, leftHandKeys, rightHandKeys, description)
end

-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
SetKeymap('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Disable search highlight'})

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
SetKeymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
SetKeymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
SetKeymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
SetKeymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
SetKeymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Select from open buffers.
SetKeymap('n', '<leader>b', ':buffers<CR>:buffer<space>', { desc = 'Select from open buffers.' })
