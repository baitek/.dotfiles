-- [[ Setting options ]]
-- See `:help vim.o`
vim.o.hlsearch = false          -- set highlight on search
vim.wo.number = true            -- make line numbers default
vim.o.relativenumber = true     -- enable relative numbers by default
vim.opt.guicursor = ""          -- set cursor to block
vim.o.mouse = 'a'               -- enable mouse mode
vim.o.breakindent = true        -- enable break indent
vim.o.undofile = true           -- save undo history
vim.o.swapfile = false          -- disable swap file by default
vim.o.backup = false            -- disable backup file by default
vim.o.ignorecase = true         -- case-insensitive searching UNLESS \C
vim.o.smartcase = true          -- /\ or capital in search
vim.wo.signcolumn = 'yes'       -- keep signcolumn on by default
vim.o.updatetime = 250          -- decrease update time
vim.o.timeoutlen = 500          -- timeout for sequence
vim.o.termguicolors = true      -- NOTE: you should make sure your terminal supports this
vim.o.cursorline = true         -- highlight current line
vim.o.showmode = false          -- don't show the mode since it's already in status line
vim.opt.splitright = true       -- splits open to the right
vim.opt.splitbelow = true       -- splits open below

-- Replace tab with 2 spaces
vim.cmd('set expandtab')
vim.cmd('set tabstop=2')
vim.cmd('set softtabstop=2')
vim.cmd('set shiftwidth=2')

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
