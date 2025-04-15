return {
  'rachartier/tiny-inline-diagnostic.nvim',
  event = 'LspAttach', -- Or `VeryLazy`
  priority = 1000, -- needs to be loaded in first
  enabled = false,
  opts = {},

  config = function()
    require('tiny-inline-diagnostic').setup {
      -- Style preset for diagnostic messages
      -- Available options:
      -- "modern", "classic", "minimal", "powerline",
      -- "ghost", "simple", "nonerdfont", "amongus"preset = 'simple',
      preset = 'simple',
      options = {
        -- Display the source of the diagnostic (e.g., basedpyright, vsserver, lua_ls etc.)
        show_source = {
          enabled = false,
          if_many = true,
        },
        overflow = {
          -- Manage how diagnostic messages handle overflow
          -- Options:
          -- "wrap" - Split long messages into multiple lines
          -- "none" - Do not truncate messages
          -- "oneline" - Keep the message on a single line, even if it's long
          mode = 'wrap',
        },
      },
      -- Use icons defined in the diagnostic configuration
      use_icons_from_diagnostic = true,
      multilines = {
        -- Enable multiline diagnostic messages
        enabled = true,

        -- Always show messages on all lines for multiline diagnostics
        always_show = false,
      },
      show_all_diags_on_cursorline = true,
    }
    vim.diagnostic.config { virtual_text = false } -- Only if needed in your configuration, if you already have native LSP diagnostics
  end,
}
