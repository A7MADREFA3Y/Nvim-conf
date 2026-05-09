-- lua/plugins/lualine.lua

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      theme = "auto",
      globalstatus = true,
      icons_enabled = true,
      component_separators = { left = "│", right = "│" },
      section_separators = { left = "", right = "" },
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        {
          "filename",
          path = 1,  -- Relativer Pfad
          symbols = { modified = " ✏️", readonly = " 🔒" },
        },
      },
      lualine_x = {
        {
          "diagnostics",
          symbols = { error = " ", warn = " ", info = " ", hint = "󰠠 " },
        },
        "diff",
      },
      lualine_y = { "progress", "location" },
      lualine_z = {
        function()
          return "󰥔 " .. os.date("%H:%M")
        end,
      },
    },
  },
}
