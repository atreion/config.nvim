return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {},
  -- config = function()
  --   local persistence = require 'persistence'
  --   vim.keymap.set('n', '<leader>zs', function()
  --     persistence.load()
  --   end, { desc = 'load the session for the current directory' })
  --
  --   vim.keymap.set('n', '<leader>zS', function()
  --     persistence.select()
  --   end, { desc = 'select a session to load' })
  --
  --   vim.keymap.set('n', '<leader>zl', function()
  --     persistence.load { last = true }
  --   end, { desc = 'load the last session' })
  --
  --   --
  --   vim.keymap.set('n', '<leader>zd', function()
  --     persistence.stop()
  --   end, { desc = "stop Persistence, session won't be saved on exit" })
  -- end,
  keys = {
    {
      '<leader>qs',
      function()
        require('persistence').load()
      end,
      desc = 'Restore Session',
    },
    {
      '<leader>qS',
      function()
        require('persistence').select()
      end,
      desc = 'Select Session',
    },
    {
      '<leader>ql',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Restore Last Session',
    },
    {
      '<leader>qd',
      function()
        require('persistence').stop()
      end,
      desc = "Don't Save Current Session",
    },
  },
}
