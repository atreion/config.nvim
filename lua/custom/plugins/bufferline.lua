return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {},
  -- keys = {
  --   { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
  --   { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
  --   { '<leader>br', '<Cmd>BufferLineCloseRight<CR>', desc = 'Delete Buffers to the Right' },
  --   { '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', desc = 'Delete Buffers to the Left' },
  --   { '<S-h>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
  --   { '<S-l>', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
  --   { '[b', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
  --   { ']b', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
  --   { '[B', '<cmd>BufferLineMovePrev<cr>', desc = 'Move buffer prev' },
  --   { ']B', '<cmd>BufferLineMoveNext<cr>', desc = 'Move buffer next' },
  -- },
  config = function()
    require('bufferline').setup()
    vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', { desc = 'Prev Buffer' })
    vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', { desc = 'Next Buffer' })
    -- vim.opt.termguicolors = true
    -- vim.opt.showtabline = 2
    -- vim.opt.tabline = '%!v:lua.require("bufferline").get_tabline()'
  end,
}
