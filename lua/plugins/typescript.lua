return {
  "AstroNvim/astrolsp",
  ---@param opts AstroLSPOpts
  opts = function(_, opts)
    require("astrocore").extend_tbl(opts, {
      config = {
        -- denols = {
        --   root_dir = require("lspconfig.util").root_pattern("deno.json", "deno.jsonc"),
        -- },
        -- tsserver = {
        --   root_dir = require("lspconfig.util").root_pattern "package.json",
        -- },
        eslint = {
          root_dir = require("lspconfig.util").root_pattern(".eslintrc.json", ".eslintrc.js"),
        },
        prettier = {
          root_dir = require("lspconfig.util").root_pattern(".prettierrc.json", ".prettierrc.js"),
        },
        biome = {
          root_dir = require("lspconfig.util").root_pattern "biome.json",
        },
      },
    })
  end,
}
