vim.keymap.set("n", "<leader>ee", function() vim.cmd.Neotree("toggle") end, { desc = "Toggle file explorer" })
vim.keymap.set("n", "<leader>o", function() vim.cmd.Neotree("focus") end, { desc = "Focus on file explorer" })
