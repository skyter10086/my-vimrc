
" Vim-Plug {{{
call plug#begin('~/.vim/plugged')
    Plug 'nanotech/jellybeans.vim'
    Plug 'chiel92/vim-autoformat'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'tpope/vim-surround'
    Plug 'scrooloose/syntastic'
    Plug 'majutsushi/tagbar'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'godlygeek/tabular'
    Plug 'ervandew/supertab'
call plug#end()
" }}}



" Startup {{{
filetype indent plugin on
" vim 文件折叠方式为 marker
augroup ft_vim
	au!
	au FileType vim setlocal foldmethod=marker
augroup END
" }}}



" General {{{
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set mouse=a
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" 设置alt不映射到菜单栏
set winaltkeys=no
"}}}



" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG='en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}


" GUI {{{
" colorscheme Tomorrow-Night
colorscheme Jellybeans

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set cursorline
set hlsearch
set number

" 窗口大小
set lines=35 columns=140
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
" 不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置tab样式而不是gui
set guioptions-=e
" set guifont
set guifont=Fira\ Code\ Retina:h14:cANSI
" }}}


" Format {{{
set autoindent
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set foldmethod=indent
syntax on
" }}}


" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}


" Tagbar {{{
nmap <F8> :TagbarToggle<CR>
" }}}


" Airline Theme {{{
let g:airline_theme='simple'
" }}}


"  Ctrlp {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" }}}

" SuperTab {{{
let g:SuperTabDefaultCompletionType = "<c-n>"
" }}}
