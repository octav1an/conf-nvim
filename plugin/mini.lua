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

vim.keymap.set("n", "<leader>e", function()
  MiniFiles.open(nil, false, {
    content = {
      filter = function(fs_entry)
        return not vim.startswith(fs_entry.name, ".")
      end,
    },
  })
end)

vim.keymap.set("n", "<leader>E", function()
  MiniFiles.open(nil, false, {
    content = {
      filter = nil,
    },
  })
end)
