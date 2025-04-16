return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,

  opts = {
    flavour = 'mocha',
    integrations = {
      blink_cmp = true,
      mason = true,
      copilot_vim = true,
      telescope = {
        enabled = true,
        style = 'nvchad',
      },
      lsp_trouble = true,
      which_key = true,
    },
  },
}
