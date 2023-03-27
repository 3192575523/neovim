local packer = require('packer')

packer.startup({
    function(use)
        -- Packer 可以管理自己本身
        use('wbthomason/packer.nvim')
        -- 你的插件列表
        -- transparent colorscheme
        use('xiyaowong/transparent.nvim')
        -- tokyonight scheme
        use('folke/tokyonight.nvim')
        -- nvim-tree
        use({ 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' })
        -- bufferline可以用来顶部标签栏设置
        use({ 'akinsho/bufferline.nvim', requires = { 'kyazdani42/nvim-web-devicons', 'moll/vim-bbye' } })
        -- lualine.nvim底部导航栏
        use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })
        use('arkav/lualine-lsp-progress')
        -- telescope模糊查找工具
        use({ 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } })
        -- telescope extensions
        use('LinArcX/telescope-env.nvim')
        -- dashboard-nvim主题
        use('glepnir/dashboard-nvim')
        -- project
        use('ahmedkhalf/project.nvim')
        -- treesitter
        use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
        -- mason补全插件
        use('williamboman/mason-lspconfig.nvim')
        use('williamboman/mason.nvim')
        -- Lspconfig
        use({ 'neovim/nvim-lspconfig' })
        -- 补全引擎
        use('hrsh7th/nvim-cmp')
        -- snippet 引擎
        use('hrsh7th/vim-vsnip')
        -- 补全源
        use('hrsh7th/cmp-vsnip')
        use('hrsh7th/cmp-nvim-lsp') -- { name = nvim_lsp }
        use('hrsh7th/cmp-buffer') -- { name = 'buffer' },
        use('hrsh7th/cmp-path') -- { name = 'path' }
        use('hrsh7th/cmp-cmdline') -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use('rafamadriz/friendly-snippets')
        -- ui
        use('onsails/lspkind-nvim')
        -- black代码对齐插件
        use('lukas-reineke/indent-blankline.nvim')
        use('kkharji/lspsaga.nvim')
        -- 代码格式化
        use('mhartington/formatter.nvim')
        --use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
        -- rust 增强
        use('simrat39/rust-tools.nvim')
        -- Debugging
        use('nvim-lua/plenary.nvim')
        use('mfussenegger/nvim-dap')
        -- nvim补全
        use('windwp/nvim-autopairs')
    end,
    config = {
        -- 最大并发
        max_jobs = 16,
        -- 浮动窗口打开安装列表
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end,
        },
    },
})

-- 每次保存 plugins.lua 自动安装插件
pcall(
    vim.cmd,
    [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
