vim.pack.add({
  "https://github.com/ibhagwan/fzf-lua"
})

vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fw", "<cmd>FzfLua live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua help_tags<cr>", { desc = "Find help" })

vim.keymap.set("n", "<leader>fe", "<cmd>FzfLua blines<cr>", { desc = "Find lines in current buffer" })

vim.keymap.set("n", "<leader>fgb", "<cmd>FzfLua git_branches<cr>", { desc = "Find git branches" })
vim.keymap.set("n", "<leader>fgc", "<cmd>FzfLua git_commits<cr>", { desc = "Find git commits" })
vim.keymap.set("n", "<leader>fgs", "<cmd>FzfLua git_status<cr>", { desc = "Find git status" })

vim.keymap.set("n", "<leader>ft", "<cmd>FzfLua treesitter<cr>", { desc = "Find tree sitter symbols" })
vim.keymap.set("n", "<leader>flr", "<cmd>FzfLua lsp_references<cr>", { desc = "Find in LSP reference" })

vim.keymap.set("n", "<leader>fk", "<cmd>FzfLua keymaps<cr>", { desc = "Find in keymaps" })
