-- ================================================================================================
-- TITLE : lazygit.lua
-- ABOUT : A lazyGit for Neovim, written in Lua.
-- LINKS :
--   > github : https://github.com/nvim-tree/nvim-tree.lua
-- ================================================================================================

return {
	"kdheepak/lazygit.nvim",
	cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open Lazygit" },
	},
}
