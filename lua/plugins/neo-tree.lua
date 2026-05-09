return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
     {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true })
      end,
      desc = "Toggle Neo-tree (left)",
    },

    },
      opts = {
    sources = { "filesystem", "buffers", "git_status" },
    window = {
      position = "left",  -- Links öffnen
      width = 30,
    },
    filesystem = {
      follow_current_file = { enabled = true },
      hijack_netrw_behavior = "open_current",
      use_libuv_file_watcher = true,
    },
  },
  lazy = false,
  },
