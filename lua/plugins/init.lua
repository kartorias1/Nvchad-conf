local overrides = require "overrides"

local plugins = {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- Override plugin definition options
  { "nvim-tree/nvim-tree.lua", opts = overrides.nvimtree },
  {"NvChad/nvterm", opts = overrides.nvterm},

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require "configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("configs.autosave_conf").setup()
    end,
  },

  {
    "folke/trouble.nvim",
    lazy = false,
    requires = "kyazdani42/nvim-web-devicons",
  },

  {
    "CRAG666/code_runner.nvim",
    cmd = "RunCode",
    config = function()
      require("configs.coderunner_conf").setup()
    end,
  },
  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup()
    end,
  },
}

return plugins
