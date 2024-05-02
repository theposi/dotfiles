-- :h nvim-surround.usage
-- ysiw and the the caracter we wanna use to surround
-- to delete the wurround is lds and then the signal
-- and for change the sign ew are using to surround is with cd an then the new sign

return {
  "kylechui/nvim-surround",
  event = { "BufReadPre", "BufNewFile" },
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  config = true,
}
