---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    local nls = require("null-ls").builtins
    config.sources = vim.list_extend(config.sources or {}, {
      nls.formatting.biome,
    })

    return config -- return final config table
  end,
}
