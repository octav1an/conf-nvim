require("config.remap")

vim.opt.number = true -- line numbers
vim.opt.relativenumber = true -- relative line numbers
vim.opt.clipboard = "unnamedplus"

vim.opt.guicursor = "" -- fat cursor in insert mode

-- make tab 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop= 4
vim.opt.shiftwidth= 4
vim.opt.expandtab = true

vim.opt.wrap = false -- !!! TEST: make sure I like it

-- disable swap and backup files
vim.opt.swapfile = false
vim.opt.backup = false
-- make sure undotree is long lasting
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false -- disable search highlight, no need for :noh
vim.opt.incsearch = true -- incremental search while building the search query

vim.opt.termguicolors = true -- TEST

vim.opt.scrolloff = 8 -- min 8 lines when scrolling to down or up
vim.opt.signcolumn = "yes" -- locks sign column (for break points, etc)
vim.opt.isfname:append("@-@") -- used with `gf` when the path contains @

vim.opt.updatetime = 50 -- TEST: renders cursor faster

vim.opt.colorcolumn = "80" -- adds a column element after at the 80th width

vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
-- make the whitespace visible
vim.opt.list = true
vim.opt.listchars = { space = '·', tab = '→ ' }

vim.g.mapleader = " "

-- LSP configs
vim.lsp.enable({"gopls", "lua_ls", "pyright", "ruff"})
