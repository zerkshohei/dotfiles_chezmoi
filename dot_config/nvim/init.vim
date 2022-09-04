"file-encoding
set encoding=utf-8
scriptencoding utf-8

filetype plugin indent on

syntax on

set nowrap

"検索関連
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"カーソル関連
set relativenumber
set number
set whichwrap=b,s,h,l,<,>,[,],~
set cursorline
nnoremap j gj
nnoremap k gk
set backspace=indent,eol,start


set list
set wildmenu
set wrapscan

"タブ・インデント関連
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4
set autoindent
set smartindent

"置換処理
if (has("nvim"))
    set inccommand=split
endif

set clipboard=unnamed

"ステータスライン関連
set showcmd
set ruler

inoremap <silent> jj <ESC>
inoremap <silent> っｊ <ESC>


if &compatible
    set nocompatible
endif

" dein.vimのディレクトリ
let s:dein_dir = $XDG_CACHE_HOME . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    " 管理するプラグインを記述したファイル
    let s:toml = $XDG_CONFIG_HOME . '/dein/dein.toml'
    let s:lazy_toml = $XDG_CONFIG_HOME . '/dein/dein_lazy.toml'
    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

" Or if you have Neovim >= 0.1.5
if (has("nvim"))
    set termguicolors
    colorscheme darcula
    "NERDTree関連
    nnoremap <silent><C-e> :NERDTreeToggle<CR>
    set timeoutlen=500
endif

