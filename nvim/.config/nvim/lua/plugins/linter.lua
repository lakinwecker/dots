return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      sqlfluff = {
        args = {
          "lint",
          "--format=json",
        },
      },
    },
  },
}
