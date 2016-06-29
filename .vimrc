" ~/.vimrc

set nocompatible
filetype off

" PLUGINS
" =======

" set runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'		" required - gotta let Vundle manage Vundle
Plugin 'bling/vim-airline'			" lightweight powerline for vim
" Plugin 'scrooloose/nerdtree'		" file tree
Plugin 'Xuyuanp/nerdtree-git-plugin'	" git support for nerdtree
" Plugin 'morhetz/gruvbox'			" colorscheme
Plugin 'chriskempson/base16-vim'	" colorschemes
Plugin 'jiangmiao/auto-pairs'		" spawn matching brackets/quotes
Plugin 'bronson/vim-trailing-whitespace'	" show trailing space
Plugin 'SirVer/ultisnips'			" code snippets
Plugin 'honza/vim-snippets'			" snippets for ultisnips


call vundle#end()

" install Vundle plugins with :PluginInstall
" update with :PluginUpdate
" or force updating with :PluginInstall!

if v:progname =~? "evim"
  finish
endif

" AIRLINE SETTINGS
" ================

let g:airline#extensions#tabline#enabled = 1
let g:airline_section=''
let g:airline_detect_paste=1 " Show PASTE if in paste mode
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ULTISNIPS SETTINGS
" ==================

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" VIM SETTINGS
" ===========

set t_Co=256			" for 256 terminal colors
let base16colorspace=256
" let base16colorspace=256	" Access colors present in 256 colorspace
" colorscheme gruvbox
colorscheme base16-ocean
set background=dark
hi Normal ctermbg=none	" transparent background
set encoding=utf-8

set mouse=a
set showmatch		" show matching bracket when cursor is over one
set ttyfast		" improve redrawing
set nostartofline	" cursor tries to stay in same column when moving vertically

set backspace=indent,eol,start	" allow backspacing over everything

set shiftwidth=4
set tabstop=4
set showcmd		" show last used command
set wildmenu	" visual autocomplete for commands

set lazyredraw	" redraw only when needed, mostly for faster macros

filetype plugin indent on

set nobackup		" because backup and undo files are annoying af

set history=1000	" it's not 1990 anymore, we can use more than 50
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set hidden		" Leave hidden buffers open
set number		" show line numbers

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" copy content of entire file with yaf
onoremap af :<C-u>normal! ggVG<CR>

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 72 characters.
  autocmd FileType text setlocal textwidth=72

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a
  " mapping.  If unset (default), this may break plugins (but it's backward
  " compatible).
  set langnoremap
endif


" Scrolling
" =========

" start scrolling when getting close to margins

set scrolloff=10
set sidescrolloff=15
set sidescroll=1
