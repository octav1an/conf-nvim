vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == 'nvim-treesitter' and kind == 'update' then
      if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
      vim.cmd('TSUpdate')
    end
  end
})

require('nvim-treesitter').install { 
	'python', 
	'typescript', 
	'javascript', 
	'go', 
	'markdown', 
	'markdown_inline', 
	'lua' 
}

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python', 'go', 'lua' , 'javascript', 'typescript', 'markdown'},
  callback = function(args) 
	  vim.treesitter.start()
  end,
})

-- For python highlights to work python vim provider needs to work.
-- This requires pynvim to be installed.
-- Source: https://github.com/neovim/pynvim
-- Install: uv tool install --upgrade pynvim
