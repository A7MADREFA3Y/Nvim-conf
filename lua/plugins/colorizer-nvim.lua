-- https://github.com/norcalli/nvim-colorizer.lua

return {
  "norcalli/nvim-colorizer.lua",
  enabled = false,
  config = function()
    require("colorizer").setup()
  end,
}
