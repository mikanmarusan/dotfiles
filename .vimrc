" ----------
" general
" ----------
set showmode " モードを表示する
set number   " 行番号を表示する
set ttyfast  " 高速ターミナル接続
set showcmd  " コマンド表示

" highlight
syntax on
colorscheme desert

" tab
set ts=2 sw=2 sts=0

" edit
set showmatch       " 対応する括弧やブレースを表示する
set matchtime=1     " 表示時間
set autoindent      " 自動インデント
set cindent         " C言語用のインデント
set mouse=a         " マウスを有効にする
set ttymouse=xterm2 " 

" ----------
" 日本語
" ----------
set termencoding=utf-8
set encoding=japan
set fileencodings=utf-8,euc-jp,cp932
set fenc=utf-8
set enc=utf-8

" ---------
" 検索
" ---------
set ignorecase " 大文字小文字区別なく検索
set hlsearch   " 検索文字のハイライトをする
set incsearch  " インクリメンタルサーチ

" ----------
" ゆとり仕様
" ----------
"viとの互換性を無効にする(INSERT中にカーソルキーが有効になる)
set nocompatible
"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"BSで削除できるものを指定する
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start

"" ----------
"" Vundle
"" ----------
"" vi との互換性OFF
"set nocompatible
"" ファイル形式の検出を無効にする
"filetype off
"
"" Vundle を初期化して
"" Vundle 自身も Vundle で管理
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
"Bundle 'gmarik/vundle'
"
"" github にあるプラグイン
"Bundle 'thinca/vim-quickrun'
"Bundle 'tyru/open-browser.vim'
"Bundle 'superbrothers/vim-quickrun-markdown-gfm'
"
"let g:quickrun_config = {
"\   'markdown': {
"\     'type': 'markdown/gfm',
"\     'outputter': 'browser'
"\   }
"\ }

" vim-scripts プラグイン

" github にないプラグイン

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 
