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
      vim.keymap.set("n", "<leader>tt", function()
        require("CopilotChat").toggle()
      end, { desc = "Toggle Copilot Chat" }),

      require("which-key").add({
        {
          "<leader>t",
          desc = "Copilot Chat Open",
          icon = "", -- pick any Nerd Font icon you like
        },
        {
          "<leader>tt",
          desc = "Copilot Chat Open",
          icon = "", -- pick any Nerd Font icon you like
        },
      }),
    },
  },
}
