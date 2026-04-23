return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><space>",
        LazyVim.pick("live_grep"),
        desc = "Grep (Root Dir)",
      },
    },
  },
}
