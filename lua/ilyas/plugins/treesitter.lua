return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
    	"c",             -- C
    	"cpp",           -- C++
    	"make",          -- Makefiles
    	"cmake",         -- CMake
    	"python",        -- Python
    	"rust",          -- Rust
    	"bash",          -- Shell/Bash
    	"lua",           -- Lua (for configuring Neovim itself)
    	"javascript",    -- JavaScript
    	"typescript",    -- TypeScript
    	"html",          -- HTML
    	"css",           -- CSS
    	"json",          -- JSON
    	"yaml",          -- YAML
    	"markdown",      -- Markdown
		"dockerfile",
		"gitignore",
		"vim",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
