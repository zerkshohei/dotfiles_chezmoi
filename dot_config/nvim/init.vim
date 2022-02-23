if &compatible
    set nocompatible
endif

" dein.vimのディレクトリ
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" なければgit clone
if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)

    " 管理するプラグインを記述したファイル
    let s:toml = '~/.dein/.dein.toml'
    let s:lazy_toml = '~/.dein/.dein_lazy.toml'
    call dein#load_toml(s:toml, {'lazy': 0})
    call dein#load_toml(s:lazy_toml, {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

colorscheme OceanicNext

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

"file-encoding
"ファイル読み込み時の設定
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

"NERDTree関連
nnoremap <silent><C-e> :NERDTreeToggle<CR>

inoremap <silent> jj <ESC>
inoremap <silent> っｊ <ESC>



