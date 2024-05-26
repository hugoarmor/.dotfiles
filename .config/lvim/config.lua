-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.colorscheme = "catppuccin-mocha"
vim.o.termguicolors = true

vim.opt.timeoutlen = 0
-- lvim.keys.normal_mode["<leader>bn"] = ":bnext<CR>"     -- Next buffer
-- lvim.keys.normal_mode["<leader>bp"] = ":bprevious<CR>" -- Previous buffer
lvim.keys.normal_mode["<leader>bf"] = ":bfirst<CR>" -- First buffer
lvim.keys.normal_mode["<leader>bl"] = ":blast<CR>"  -- Last buffer

lvim.keys.normal_mode["<leader>f"] = nil
lvim.keys.normal_mode["<leader>ff"] = "<cmd>Telescope find_files<CR>"
lvim.keys.normal_mode["<leader>fs"] = "<cmd>Telescope live_grep<CR>"
lvim.builtin.relative_number = true
vim.opt.relativenumber = true

-- NvimTree configuration to show dotfiles
lvim.builtin.nvimtree.setup.filters.dotfiles = false

-- Telescope configuration to show dotfiles
lvim.builtin.telescope.defaults.file_ignore_patterns = {}
lvim.builtin.telescope.defaults.vimgrep_arguments = {
  'rg',
  '--color=never',
  '--no-heading',
  '--with-filename',
  '--line-number',
  '--column',
  '--smart-case',
  '--hidden' -- Include hidden files
}

lvim.keys.normal_mode["<leader>n"] = ":nohlsearch<CR>"

lvim.plugins = {
  { "catppuccin/nvim",        name = "catppuccin" },
  { "tribela/vim-transparent" },
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  }
  --  { "tpope/vim-commentary" },
  --  { "mg979/vim-visual-multi" }
  --  { "github/copilot.vim--" }
}

