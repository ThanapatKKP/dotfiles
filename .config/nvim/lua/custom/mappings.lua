local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
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
    }
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

return M
