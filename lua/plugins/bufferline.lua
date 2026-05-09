-- lua/plugins/bufferline.lua

return {
  "akinsho/bufferline.nvim",
  event = "BufReadPost",
  keys = {
    { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next buffer" },
    { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev buffer" },
  },
  opts = {
    options = {
      diagnostics = "nvim_lsp",
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          text_align = "center",
          separator = true,
        },
      },
    },
  },
  init = function()  -- Offset-Patch hier
    local Offset = require("bufferline.offset")
    if not Offset.edgy then
      -- ... gleicher Patch-Code wie oben ...
    end
  end,
}
