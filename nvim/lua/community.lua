-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  -- { import = "astrocommunity.diagnostics.error-lens-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- import/override with your plugins folder
  { import = "astrocommunity.motion.mini-surround" },
}
