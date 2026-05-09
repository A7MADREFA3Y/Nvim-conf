return {
  "nvzone/floaterm",
  dependencies = "nvzone/volt",
  cmd = "FloatermToggle",
  keys = {
    {
      "<leader>ft",
      function()
        local dir = vim.fn.fnamemodify(vim.fn.expand("%"), ":p:h")
        if vim.fn.isdirectory(dir) == 1 then
          vim.cmd("tcd " .. vim.fn.fnameescape(dir))
        end
        vim.cmd("FloatermToggle")
      end,
      mode = { "n", "t" },
      desc = "Toggle float term in file dir",
    },
  }, -- Use the fixed function above
  opts = { border = "rounded" }, -- Optional
}
