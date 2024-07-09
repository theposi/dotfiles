local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add a mark to a file" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle harpoon menu" })

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Move to the first file marked" })
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Move to the second file marked" })
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = "Move to the third file marked" })
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = "Move to the fourth file marked" })
