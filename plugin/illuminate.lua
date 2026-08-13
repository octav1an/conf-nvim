vim.pack.add({
    "https://github.com/RRethy/vim-illuminate"
})

require('illuminate').configure({
    min_count_to_highlight = 2
})
