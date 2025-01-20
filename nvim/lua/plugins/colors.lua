return { {
    "Shatur/neovim-ayu",
    enabled = false,
    config = function()
      local ayu = require('ayu')
      ayu.setup {
        mirage = true,
        terminal = true,
        overrides = {},
      }
      vim.cmd.colorscheme("ayu")
    end
  },
  {
    "phha/zenburn.nvim",
    enabled = false,
    config = function()
      vim.cmd.colorscheme("zenburn")
    end
  },
  {
    "rebelot/kanagawa.nvim",
    enabled = false,
    config = function()
      vim.cmd.colorscheme("kanagawa-dragon")
    end
  },
  {
    "catppuccin/nvim",
    enabled = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("catppuccin-mocha")
    end
  },
  {
    "AlexvZyl/nordic.nvim",
    enabled = false,
    priority = 1000,
    config = function()
      require('nordic').load()
    end
  },
  {
    "philosofonusus/morta.nvim",
    enabled = true,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme('morta')
    end
  },
  {
    "vague2k/vague.nvim",
    enabled = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme('vague')
    end
  },
  {
    "aktersnurra/no-clown-fiesta.nvim",
    enabled = false,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme('no-clown-fiesta')
    end
  },
}
