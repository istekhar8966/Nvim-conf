-- lua/plugins/blink-tab.lua
return {
  {
    "saghen/blink.cmp",
    opts = {
      preselect = false, -- Diable autoselect first suggestion
      keymap = {
        preset = "super-tab", -- VS Code-like Tab nav preset [web:27][web:25]
        ["<Tab>"] = { "select_next", "fallback" }, -- go to next suggestion [web:35]
        ["<S-Tab>"] = { "select_prev", "fallback" }, -- go to previous suggestion [web:35]
        ["<CR>"] = { "accept", "fallback" }, -- accept highlighted item [web:35]
      },
    },
  },
}
