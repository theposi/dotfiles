-- Remap the leader for the Space key
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Back to default file tree" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected text down in visual mode" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected text up in visual mode" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join current line with line below" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down half a page and center cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up half a page and center cursor" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Move to next search match and center cursor" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Move to previous search match and center cursor" })
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>", { desc = "Restart LSP server" })

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end, { desc = "Start Vim With Me session" })
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end, { desc = "Stop Vim With Me session" })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Replace selection with default register contents" })

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank current line to system clipboard" })

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], { desc = "Delete to black hole register" })

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "Map Ctrl+c to Escape in insert mode" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Disable the Q command" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format current buffer using LSP" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Move to next item in quickfix list and center cursor" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Move to previous item in quickfix list and center cursor" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Move to next item in location list and center cursor" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Move to previous item in location list and center cursor" })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Search and replace word under cursor interactively" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make current file executable" })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>", { desc = "Open packer.lua file" })
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Run CellularAutomaton make_it_rain command" })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Source current file" })
