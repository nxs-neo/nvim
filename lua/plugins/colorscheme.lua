return {
  -- { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  {
    "morhetz/gruvbox",
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
