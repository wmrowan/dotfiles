set nocompatible
filetype off

" Setup vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" All vundle bundles
Bundle 'gmarik/vundle'
Bundle 'fatih/vim-go'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
"Bundle 'airblade/vim-gitgutter'
"Bundle 'kien/ctrlp.vim'
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/powerline'
"Bundle 'fidian/hexmode'
"Bundle 'kchmck/vim-coffee-script'

" Necessary for color to work in powerline
set term=xterm-256color

" We really don't want to litter our file
" system with all those annoying files.
set nobackup
set noswapfile

" Proper mouse functionality in vim is some
" kind of black magic.
set mouse=a
set ttymouse=xterm2

" Replaces tabs with spaces
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

" I really like this color scheme. It's
" been the default on Ubuntu for some
" time but on some systems I have to set
" it manually
set bg=dark
colorscheme ron

" I can't live in vim without these
" settings.
set number
set incsearch
set nohls
set scrolloff=3
set laststatus=2

" Maps the default register to the system
" clipboard so we never have to think about
" copying and pasting to and from vim again.
set clipboard=unnamedplus

syntax enable

" It took me a while to find this feature.
" This updates settings based on the detected
" filetype on open. There seem to be plenty
" of helpful behaviors defined by default.
filetype plugin indent on

" Use powerline as our status line
"set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Allows you to scroll while keeping the cursor
" in the same relative screen location. I can't
" tell you why I prefer this behavior but I go
" crazy if I don't have it.
map <C-j> <C-e>j
map <C-k> <C-y>k

" Look for the ctags file
set tags=tags;,.tags;
set showfulltag

" Vim doesn't seem to know about protocol buffer
" source files by default.
au BufRead,BufNewFile *.proto  setfiletype proto

" End line whitespace highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/
