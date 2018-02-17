"----------------------------------------------------
" vimプラグインの設定
"----------------------------------------------------
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')
  call dein#add('tpope/vim-rails')
  call dein#add('vim-scripts/The-NERD-tree')
  call dein#add('Shougo/neocomplcache')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('groenewege/vim-less')
  call dein#add('jpo/vim-railscasts-theme')
  call dein#add('chriskempson/vim-tomorrow-theme')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------


"----------------------------------------------------
" NeoComplCacheの設定
"----------------------------------------------------
"有効
let g:neocomplcache_enable_at_startup = 1

" 大文字小文字を区別する
let g:neocomplcache_enable_smart_case = 1


"----------------------------------------------------
" vimの設定
"----------------------------------------------------
"新しい行のインデントを現在行と同じにする
set autoindent

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"自動インデントの各段階に使われる空白の数
set shiftwidth=2

"行番号を表示する
set number

"タブの代わりに空白文字を挿入する
set expandtab

"ファイル内の <Tab> が対応する空白の数
set tabstop=2

"Vi互換をオフ
set nocompatible

"検索結果をハイライトする
set hlsearch

"インクリメンタルサーチを行う
set incsearch

"スワップファイル用のディレクトリ
set directory=~/.vim/tmp

"スワップファイルを作らない
set noswapfile

" カーソル位置を表示
set ruler

" 表示設定
syntax on
colorscheme railscasts
"colorscheme Tomorrow-Night-Eighties


au BufRead,BufNewFile *.md set filetype=markdown

