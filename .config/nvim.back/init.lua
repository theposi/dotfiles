local vim = vim
local Plug = vim.fn["plug#"]

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("theposi.lazy")

vim.call("plug#begin", "~/dotfiles/.config/nvim/plugged")

-- Plugins list

Plug("wuelnerdotexe/vim-astro")

vim.call("plug#end")
