return {
  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
	add = { text = '+' },
	change = { text = '~' },
	delete = { text = '_' },
	topdelete = { text = '‾' },
	changedelete = { text = '~' },
      },
    },
  },
--  {
--    'stevearc/oil.nvim',
--    ---@module 'oil'
--    ---@type oil.SetupOpts
--    opts = {},
--    -- Optional dependencies
--    dependencies = { { "echasnovski/mini.icons", opts = {} } },
--    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
--  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false }
  },
  {
    'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  },
}
