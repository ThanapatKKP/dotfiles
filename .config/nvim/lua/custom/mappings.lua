local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<F5>"] = {
      function()
        require('dap').continue();
      end,
      "Start debugging"
    },
    ["<F10>"] = {
      function()
        require('dap').step_over();
      end,
      "Step over"
    },
    ["<F11>"] = {
      function()
        require('dap').step_into();
      end,
      "Step into"
    },
    ["<F12>"] = {
      function()
        require('dap').step_out();
      end,
      "Step out"
    },
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    },
    ["<leader>ger"] = {
      "<cmd> GoIfErr <CR>",
      "Add Error Handling"
    },
  }
}

M.panes = {
  n = {
    ["<C-h>"] = {
      "<C-w>h",
      "Move to the left pane"
    },
    ["<C-j>"] = {
      "<C-w>j",
      "Move to the bottom pane"
    },
    ["<C-k>"] = {
      "<C-w>k",
      "Move to the top pane"
    },
    ["<C-l>"] = {
      "<C-w>l",
      "Move to the right pane"
    }
  }
}

M.neotest = {
  n = {
    ["<leader>t"] = {
      "<cmd>lua require('neotest').run.run()<CR>",
      "Run the nearest test"
    },
    ["<leader>tf"] = {
      "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>",
      "Run the current file"
    },
    ["<leader>tc"] = {
      "<cmd>lua require('neotest').run.run(vim.fn.getcwd())<CR>",
      "Run test suite"
    },
    ["<leader>tt"] = {
      "<cmd>lua require('neotest').run.stop()<CR>",
      "Stop the test"
    },
    ["<leader>to"] = {
      "<cmd>lua require('neotest').output_panel.toggle()<CR>",
      "Toggle test output"
    },
    ["<leader>tq"] = {
      "<cmd>lua require('neotest').summary.toggle()<CR>",
      "Toggle test summary"
    },
  }
}

return M
