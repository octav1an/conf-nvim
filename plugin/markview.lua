vim.pack.add({
    "https://github.com/OXY2DEV/markview.nvim",
})

require("markview").setup({
    markdown = {
        list_items = {
            indent_size = 2,
            shift_width = 2,
            marker_minus = {
                text = "⚬",
                hl = "MarkviewListItemMinus",
                add_padding = true,
            },
        },
    },
})

vim.keymap.set("n", "<leader>mp", "<cmd>Markview toggle<cr>",
    { desc = "Toggle Markdown preview" }
)
