-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- Pack
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.blade" },
  { import = "astrocommunity.pack.laravel" },
  { import = "astrocommunity.pack.scala" },
  { import = "astrocommunity.pack.html-css" },
  -- { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.yaml" },

  -- Editing
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },

  -- Colorschemes
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- Motion
  { import = "astrocommunity.motion.mini-surround" },

  -- Completion
  { import = "astrocommunity.completion.avante-nvim" },
  -- { import = "astrocommunity.completion.copilot-lua" },
  -- { import = "astrocommunity.completion.copilot-cmp" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
