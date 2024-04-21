return {
'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    local keymap = vim.keymap
    keymap.set('n', '<leader>ff', builtin.find_files, {desc = "Find files in cwd"})
    keymap.set('n', '<leader>fg', builtin.live_grep, {desc = "Find recent files"})
    keymap.set('n', '<leader>fb', builtin.buffers, {desc = "Find string in cwd"})
    keymap.set('n', '<leader>fh', builtin.help_tags, {desc = "Find string under cursor in cwd"})
  end,
}

