vim.pack.add({
  "https://github.com/nvim-mini/mini.files",
  "https://github.com/nvim-mini/mini.icons",
  "https://github.com/nvim-mini/mini.snippets", 
  "https://github.com/nvim-mini/mini.completion",
  "https://github.com/nvim-mini/mini.comment"
})

require('mini.files').setup()
require('mini.icons').setup()
require('mini.snippets').setup()
require('mini.completion').setup()
require('mini.comment').setup()

vim.keymap.set("n", "<leader>e", "<cmd>lua MiniFiles.open()<cr>", { desc = "Open mini.files"})
