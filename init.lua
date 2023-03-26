-- neovide尺寸
vim.g.neovide_scale_factor = 1.0
-- neovide模糊流动系数
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
-- 透明性
vim.g.neovide_transparency = 0.9
-- 设置全屏
vim.g.neovide_fullscreen = true
-- neovide的方向键位特效
vim.g.neovide_cursor_vfx_mode = 'ripple'

-- 基础配置
require('basic')
-- 按键配置
require('keybindings')
-- 插件配置Packer
require('plugins')
-- 主题设置
require('colorscheme')
-- transparent插件
require('trans')
-- 文件导航
require('plugin-config.nvim-tree')
-- 顶部导航
require('plugin-config.bufferline')
-- 底部导航
require('plugin-config.lualine')
-- 模糊查找
require('plugin-config.telescope')
-- dashboard设置
require('plugin-config.dashboard')
require('plugin-config.project')
-- 语法高亮模块
require('plugin-config.nvim-treesitter')
-- 内置LSP
require('lsp.setup')
require('lsp.cmp')
require('lsp.common-config')
require('lsp.ui')
-- plugin-config/indent-blankline插件用来查看对其
require('plugin-config.indent-blankline')
-- lsp formatter
require('lsp.formatter')
