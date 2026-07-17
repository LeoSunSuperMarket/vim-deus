# vim-deus

一个 retro-modern 风格的 Vim 颜色主题，参考了以下项目：

- [ajmwagar/vim-deus](https://github.com/ajmwagar/vim-deus)
- [theniceboy/nvim-deus](https://github.com/theniceboy/nvim-deus)

## 安装

使用 [vim-plug](https://github.com/junegunn/vim-plug)：

```vim
Plug 'LeoSunSuperMarket/vim-deus'
```

## 使用

```vim
" 在 vimrc 中启用
colorscheme deus

" 或者使用自定义变体
colorscheme deus-custom
```

## 特性

- 完整的语法高亮
- Treesitter 支持（`TS*` 高亮组）
- Coc.nvim / ALE / LSP 诊断支持
- GitGutter / Signify 支持
- NERDTree 支持
- CtrlP / FZF / Telescope 支持
- Markdown 高亮
- 256 色终端和 GUI 双支持
- Vim / Neovim 兼容

## 状态栏主题

### Airline

```vim
let g:airline_theme = 'deus'
```

### Lightline

```vim
let g:lightline = { 'colorscheme': 'deus' }
```

## 屏幕截图

_待添加_

## License

MIT
