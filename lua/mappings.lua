require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>ru", "<cmd> :RunCode <CR>")
map("n", "<leader>to", "<cmd> :Trouble <CR>")
map("n", "<leader>tc", "<cmd> :TroubleClose <CR>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local M = {}

M.disabled = {}

-- M.general = {
--   n = {
--     ["<C-h>"] = { "<cmd> TmuxNavigateLeft <CR>", "window left" },
--     ["<C-j>"] = { "<cmd> TmuxNavigateDown <CR>", "window down" },
--     ["<C-k>"] = { "<cmd> TmuxNavigateUp <CR>", "window up" },
--     ["<C-l>"] = { "<cmd> TmuxNavigateRight <CR>", "window right" },
--   },
-- }
-- M.resize = {
--   n = {
--     ["<A-->"] = {
--       "<cmd> resize -1 <CR>",
--     },
--     ["<A-=>"] = {
--       "<cmd> resize +1 <CR>",
--     },
--     ["<A-.>"] = { "<cmd>:vertical resize +1 <CR>", "Vertical resize increase" },
--     ["<A-,>"] = { "<cmd>:vertical resize -1 <CR>", "Vertical resize decrease" },
--   },
-- }

M.coderunner = {
  n = {
    ["<leader>ru"] = { "<cmd> :RunCode <CR>", "run code" },
  },
}

M.symbols_outline = {
  n = {
    ["<leader>so"] = {
      "<cmd> SymbolsOutline <CR>",
      "SymbolsOutline",
    },
  },
}

----- Override mappings -----
M.nvterm = {
  n = {
    ["<leader>fi"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "Toggle new floating term",
    },
  },
}

M.Dapui = {
  n = {
    ["<leader>da"] = {
      -- function()
      --   require("dapui").toggle()
      -- end,
      '<cmd> :lua require("dapui").toggle() <CR>',
      "Toggle nvim dap",
    },
  },
}

return M
