return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        preset = "super-tab",
      }
      opts.fuzzy = { implementation = "prefer_rust_with_warning" }
    end,
  },
}
