vim.pack.add({"https://github.com/folke/flash.nvim"})

require("flash").setup({
    modes = {
        search = {
            enabled = true,
        },
    },
})

local flash = require("flash")

vim.keymap.set({ "n", "x", "o" }, "s", flash.jump)
vim.keymap.set({ "n", }, "S", flash.treesitter)
vim.keymap.set("o", "r", flash.remote)
vim.keymap.set({ "o", "x" }, "R", flash.treesitter_search)

