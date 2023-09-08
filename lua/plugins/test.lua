return {
  {
    "nvim-neotest/neotest",
    dependencies = { "haydenmeade/neotest-jest", "marilari88/neotest-vitest" },
    keys = {
      {
        "<leader>tl",
        function()
          require("neotest-jest").run.run_last()
        end,
        desc = "Run last Test",
      },
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.js",
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
      table.insert(opts.adapters, require("neotest-vitest"))
    end,
  },
}
