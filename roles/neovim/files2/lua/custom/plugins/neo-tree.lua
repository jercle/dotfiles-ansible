return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup {
      sources = {
        "filesystem",
        "buffers",
        "git_status",
        -- "document_symbols"
    },
      window = {
        mappings = {
          ["P"] = { "toggle_preview", config = { use_float = true, } },
          ["a"] = {
            "add",
            -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
            -- some commands may take optional config options, see `:h neo-tree-mappings` for details
            config = {
              show_path = "absolute" -- "none", "relative", "absolute"
            }
          },
        }
      },
      default_component_configs = {
        indent = {
          with_markers = true,
          indent_marker = "│",
          last_indent_marker = "└",
          indent_size = 2,
        },
      },
      nesting_rules = {
        ["js"] = { "js.map" },
        ["go"] = {
          pattern = "(.*)%.go$",    -- <-- Lua pattern with capture
          files = { "%1_test.go" }, -- <-- glob pattern with capture
        },
        ["docker"] = {
            pattern = "^dockerfile$",
            ignore_case = true,
            files = { ".dockerignore", "docker-compose.*", "dockerfile*" },
        }
      },
      -- source_selector = {
      --   winbar = true,
      --   -- statusline = true
      -- },
    }
  end,
}
-- return {}
