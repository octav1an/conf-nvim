vim.pack.add({
    "https://github.com/OXY2DEV/markview.nvim",
})

vim.keymap.set("n", "<leader>mp", "<cmd>Markview toggle<cr>",
    { desc = "Toggle Markdown preview" }
)
