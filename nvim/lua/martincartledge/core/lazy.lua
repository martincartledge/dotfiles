-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system({
--     "git",
--     "clone",
--     "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git",
--     "--branch=stable", -- latest stable release
--     lazypath,
--   })
-- end
-- vim.opt.rtp:prepend(lazypath)

-- require("lazy").setup({ { import = "martincartledge.plugins" }, { import = "martincartledge.plugins.lsp" } }, {
--   install = {
--     colorscheme = { "nightfly" },
--   },
--   checker = {
--     enabled = true,
--     notify = false,
--   },
--   change_detection = {
--     notify = false,
--   },
-- })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    {
      "LazyVim/LazyVim",
      import = "lazyvim.plugins",
    },
    -- import any extras modules here
    -- -- UI --
    -- edgy (better window management)
    { import = "lazyvim.plugins.extras.ui.edgy" },
    -- use mini-starter.nvim as welcome screen instead of alpha.nvim
    { import = "lazyvim.plugins.extras.ui.mini-starter" },
    -- -- EDITOR --
    -- list symbols <leader>cs
    { import = "lazyvim.plugins.extras.editor.aerial" },
    -- move with f/F/t/T
    { import = "lazyvim.plugins.extras.editor.leap" },
    -- -- LANGUAGES --
    { import = "lazyvim.plugins.extras.lang.python-semshi" },
    -- -- EXTRAS --
    --  LSP with none-ls
    { import = "lazyvim.plugins.extras.lsp.none-ls" },
    -- TESTING
    -- core
    { import = "lazyvim.plugins.extras.dap.core" },
    -- lua
    { import = "lazyvim.plugins.extras.dap.nlua" },
    -- neotest
    { import = "lazyvim.plugins.extras.test.core" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  checker = { enabled = true }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})