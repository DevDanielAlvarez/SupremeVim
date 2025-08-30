return {
  'saghen/blink.cmp',
  dependencies = { 
	  'rafamadriz/friendly-snippets',
	  'nvim-mini/mini.icons'
  },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = { preset = 'enter' },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = {
	    documentation = { auto_show = false },
	    menu = {
		    border = 'single',
		    draw = {
			padding = {1,2},
			components = {
        kind_icon = {
          text = function(ctx)
            local kind_icon, _, _ = require('mini.icons').get('lsp', ctx.kind)
            return kind_icon
          end,
          -- (optional) use highlights from mini.icons
          highlight = function(ctx)
            local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
            return hl
          end,
        },
        kind = {
          -- (optional) use highlights from mini.icons
          highlight = function(ctx)
            local _, hl, _ = require('mini.icons').get('lsp', ctx.kind)
            return hl
          end,
        }
      }
		    }
	    }
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },

      },

  opts_extend = { "sources.default" }
}
