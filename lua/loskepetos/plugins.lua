-- Auto source when there are changes in plugins.lua
local group = vim.api.nvim_create_augroup('PackerGroup', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = 'plugins.lua',
  command = 'source <afile> | PackerCompile profile=true',
  group = group,
})

require('packer').startup({
  function(use)
    -- Packer
    use { "wbthomason/packer.nvim" }
    use 'lewis6991/impatient.nvim'

    -- NvimTree
    use { "nvim-tree/nvim-tree.lua",
      requires = {
        'nvim-tree/nvim-web-devicons'
      },
      tag = 'nightly'
    }
    -- Options
    use { "nvim-lua/plenary.nvim" } -- Plugins
    use { "nvim-lualine/lualine.nvim" } -- Lualine Statusline
    use { "lukas-reineke/indent-blankline.nvim" } -- Indentline
    use { "numToStr/Comment.nvim" } -- Comment
    use { "JoosepAlviste/nvim-ts-context-commentstring" } -- Context Commentstring
    use { "akinsho/toggleterm.nvim" } -- Multiple Terminal
    use { "windwp/nvim-autopairs" } -- Autopairs
    use { "windwp/nvim-ts-autotag" } -- Autotags
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

    -- Colorscheme
    use { "folke/tokyonight.nvim" }
    use { "lunarvim/darkplus.nvim" }
    use { "projekt0n/github-nvim-theme" }

    -- Treesitter
    use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' }

    -- Telescope
    use { 'nvim-telescope/telescope.nvim' }
    use { 'nvim-telescope/telescope-file-browser.nvim' }

    -- Cmp
    use { "hrsh7th/nvim-cmp" } -- The completion plugin
    use { "hrsh7th/cmp-buffer" } -- buffer completions
    use { "hrsh7th/cmp-path" } -- path completions
    use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
    use { "hrsh7th/cmp-nvim-lsp" }
    use { "hrsh7th/cmp-nvim-lua" }

    -- Snippets
    use { "L3MON4D3/LuaSnip" } --snippet engine
    use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use

    -- Git
    use { "lewis6991/gitsigns.nvim" }
    use { "dinhhuy258/git.nvim" }

    -- Lspconfig with ui
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { "williamboman/mason.nvim" } -- simple to use language server installer
    use { "williamboman/mason-lspconfig.nvim" }
    use { "glepnir/lspsaga.nvim", branch = "main" }

  end,

  config = {
    profile = { enable = true },
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end,
      working_sym = '',
      error_sym = '',
      done_sym = '',
      removed_sym = '',
      moved_sym = '',
      prompt_border = 'rounded',
      keybindings = {
        quit = 'q',
        toggle_info = '<cr>',
        diff = '=',
        prompt_revert = 'r',
      },
    },
  },
})
