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
## 状态栏主题

### Airline

```vim
let g:airline_theme = 'deus'
```

### Lightline

```vim
let g:lightline = { 'colorscheme': 'deus' }
```

## License

MIT
