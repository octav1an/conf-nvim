vim.pack.add({
  "https://github.com/ibhagwan/fzf-lua"
})

vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fw", "<cmd>FzfLua live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Find help" })
vim.keymap.set("n", "<leader>fF", function()
  require("fzf-lua").files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Find files (including gitignored)" })

vim.keymap.set("n", "<leader>fe", "<cmd>FzfLua blines<cr>", { desc = "Find lines in current buffer" })
vim.keymap.set("n", "<leader>fd", function()
    require("fzf-lua").diagnostics_document({
        winopts = {
            preview = {
                layout = "vertical",
                vertical = "down:50%",
            },
        },
    })
end,
{ desc = "Find diagnostics in current buffer" })

-- Git related keymaps
vim.keymap.set("n", "<leader>fgb", "<cmd>FzfLua git_branches<cr>", { desc = "Find git branches" })
vim.keymap.set("n", "<leader>fgc", "<cmd>FzfLua git_commits<cr>", { desc = "Find git commits" })
vim.keymap.set("n", "<leader>fgs", function()
    require("fzf-lua").git_status({
        winopts = {
            preview = {
                layout = "vertical",
                vertical = "down:60%",
            },
        },
    })
end,
{ desc = "Find git status" })

-- LSP related keymaps
vim.keymap.set("n", "<leader>ft", "<cmd>FzfLua treesitter<cr>", { desc = "Find tree sitter symbols" })
vim.keymap.set("n", "<leader>flr", "<cmd>FzfLua lsp_references<cr>", { desc = "Find in LSP reference" })
vim.keymap.set("n", "<leader>fs", function()
    require("fzf-lua").lsp_document_symbols({
        winopts = {
            preview = {
                layout = "vertical",
                vertical = "down:40%",
            },
        },
    })
end,
{desc = "Find in lsp document symbols (outline)"})

vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", { desc = "Find in keymaps" })


