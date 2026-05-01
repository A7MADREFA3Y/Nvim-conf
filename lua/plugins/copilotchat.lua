-- Filename: ~/github/dotfiles-latest/neovim/neobean/lua/plugins/copilotchat.lua
-- ~/github/dotfiles-latest/neovim/neobean/lua/plugins/copilotchat.lua

-- https://github.com/CopilotC-Nvim/CopilotChat.nvim

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
  },
}
