vim.pack.add({
    "https://github.com/nvim-mini/mini.files",
    "https://github.com/nvim-mini/mini.icons",
    "https://github.com/nvim-mini/mini.comment",
    "https://github.com/nvim-mini/mini.cmdline",
    "https://github.com/nvim-mini/mini.pairs"
})

require('mini.files').setup()
require('mini.icons').setup()
require('mini.comment').setup()
require('mini.cmdline').setup()
require('mini.pairs').setup()

vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<cr>", { desc = "Open mini.files"})
