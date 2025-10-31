return {
  -- Gruvbox theme
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      terminal_colors = true, -- apply to :terminal [web:39]
      undercurl = true, -- diagnostics underline style [web:39]
      underline = true, -- underline highlights [web:39]
      bold = true, -- bold keywords/headings [web:39]
      italic = {
        strings = true, -- italic strings [web:54]
        comments = true, -- italic comments [web:54]
        operators = false, -- keep operators non-italic for clarity [web:54]
        folds = true, -- italic fold text [web:54]
      },
      strikethrough = true, -- strike deprecated text [web:51]
      invert_selection = false, -- keep selection flat [web:51]
      invert_signs = false, -- cleaner sign column [web:51]
      invert_tabline = false, -- keep tabline consistent [web:51]
      invert_intend_guides = false, -- align guides normal [web:51]
      inverse = true, -- invert search/diff/statusline for contrast [web:51]
      contrast = "hard", -- "hard" | "soft" [web:51]

      dim_inactive = true, -- dim unfocused windows [web:51]
      transparent_mode = false, -- set true if using compositor transparency [web:48][web:39]

      -- optional: tune background shades for a slightly deeper “hard”
      palette_overrides = {
        dark0_hard = "#1d2021", -- canonical hard bg [web:39]
        dark1 = "#242424", -- slightly deeper line bg [web:54]
      },

      -- per-highlight tweaks for UX clarity
      overrides = {
        -- Popup menu slightly darker for readability
        Pmenu = { bg = "#1a1a1a", fg = "#cccccc" },
        PmenuSel = { bg = "#3a3a3a", fg = "#ffffff", bold = true },

        -- Make signcolumn blend when desired
        SignColumn = { bg = "NONE" }, -- cleaner gutter [web:54]
        GruvboxRedSign = { bg = "NONE" }, -- diagnostic signs no bg [web:54]
        GruvboxGreenSign = { bg = "NONE" }, -- [web:54]
        GruvboxAquaSign = { bg = "NONE" }, -- [web:54]
        GruvboxBlueSign = { bg = "NONE" }, -- [web:54]
        GruvboxPurpleSign = { bg = "NONE" }, -- [web:54]
        GruvboxYellowSign = { bg = "NONE" }, -- [web:54]
        GruvboxOrangeSign = { bg = "NONE" }, -- [web:54]

        -- High-contrast search highlights
        Search = { fg = "#E1A416", bg = "NONE", underline = false }, -- [web:54]
        IncSearch = { fg = "#E56700", bg = "NONE", underline = true }, -- [web:54]
      },
    },
    config = function(_, opts)
      require("gruvbox").setup(opts) -- setup must run before :colorscheme [web:43]
      vim.o.background = "dark" -- ensure dark mode [web:39]
    end,
  },

  -- Tell LazyVim to use Gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox", -- LazyVim colorscheme switch [web:42][web:40]
    },
  },
}
