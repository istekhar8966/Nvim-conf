return {
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      filetypes = { "*" },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        RGBA = true, -- #RGBA hex codes
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        names = true, -- "Name" codes like Blue or red
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features
        css_fn = true, -- Enable all CSS functions
        -- Mode set to virtualtext to show colored indicator
        mode = "virtualtext",
        -- Character to use for the dot (you can change to "●" or "⬤" for different styles)
        virtualtext = "⬤",
        -- Display virtualtext before the color code
        virtualtext_inline = "before",
        -- Highlight mode for the virtualtext
        virtualtext_mode = "foreground",
        tailwind = true, -- Enable tailwind colors if needed
      },
    },
  },
}
