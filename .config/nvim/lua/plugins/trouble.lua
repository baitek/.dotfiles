return {
  -- A pretty list for showing diagnostics, references, telescope results, quickfix and location lists
  -- See `:help trouble`
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('trouble').setup()

    vim.keymap.set('n', '<leader>xx', function() require('trouble').toggle() end)
    vim.keymap.set('n', '<leader>xw', function() require('trouble').toggle('workspace_diagnostics') end)
    vim.keymap.set('n', '<leader>xd', function() require('trouble').toggle('document_diagnostics') end)
    vim.keymap.set('n', '<leader>xq', function() require('trouble').toggle('quickfix') end)
    vim.keymap.set('n', '<leader>xl', function() require('trouble').toggle('loclist') end)
    vim.keymap.set('n', '<leader>gr', function() require('trouble').toggle('lsp_references') end)
  end
}
