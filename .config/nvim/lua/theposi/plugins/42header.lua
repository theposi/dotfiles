return {
    "Diogo-ss/42-header.nvim",
    lazy = false,
    config = function()
        local header = require("42header")
        header.setup({
            default_map = true,
            auto_update = true,
            user = "crizapat",
            mail = "crizapat@student.42madrid.com",
        })
    end
}
