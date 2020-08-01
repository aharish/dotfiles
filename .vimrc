set nocompatible
filetype off
set encoding=utf-8  " The encoding displayed.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Emmet for Vim
Plugin 'mattn/emmet-vim'

" NERDTree for Vim
Plugin 'preservim/nerdtree'

" NERDTree Git Plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Plugin wrapper for better indent support for HTML in PHP
Bundle 'captbaritone/better-indent-support-for-php-with-html'

" Base16 VIM
Plugin 'chriskempson/base16-vim'

" For Tabularizing arrays in PHP
Plugin 'godlygeek/tabular'

call vundle#end()
filetype plugin indent on

" NERDTree Config
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen = 1 " Close NERDTree after selecting a file to open
" let g:webdevicons_enable = 1
" let g:WebDevIconsUnicodeDecorateFileNodes = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" Basic WebDev Config
set number
syntax on
colorscheme slate
set tabstop=2
set shiftwidth=2 " Sets the number of spaces for reindentation
set expandtab " Sets to spaces instead of tab
retab " Converts the file to use spaces instead of tab
inoremap <leader><CR> <CR><C-o>==<C-o>O
set autoindent
packadd! matchit " Enable MatchIt Plugin for quickly jumping between HTML tags
set hlsearch " Highlight search matches
" Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Custom Colours
hi User1 ctermfg=252 ctermbg=238
hi User2 ctermfg=252 ctermbg=16
hi User3 ctermfg=15 ctermbg=31

" Vim Statusline Config
set laststatus=2
set statusline=\ %t\ 
set statusline+=%3*
set statusline+=\ %{FugitiveStatusline()}\ 
set statusline+=%1*
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}]\  "file format
set statusline+=%y\       "filetype
set statusline+=%2*
set statusline+=%=      "left/right separator
set statusline+=%*
set statusline+=\ %c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P\     "percent through file
"set statusline+=%#PmenuSel#
"set statusline+=%#StatusLine#
"set statusline+=%{FugitiveStatusline()}
"set statusline+=%#LineNr#
"set statusline+=\ %f
"set statusline+=%m\ 
"set statusline+=%=
"set statusline+=%#CursorColumn#
"set statusline+=\ %y
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
"set statusline+=\ %p%%
"set statusline+=\ %l:%c
"set statusline+=\
