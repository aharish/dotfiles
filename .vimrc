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

" Git for Vim
Plugin 'tpope/vim-fugitive'

" NERDTree Git Plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Plugin wrapper for better indent support for HTML in PHP
Bundle 'captbaritone/better-indent-support-for-php-with-html'

" Base16 VIM
Plugin 'chriskempson/base16-vim'

" For Tabularizing arrays in PHP
Plugin 'godlygeek/tabular'

" Modern JavaScript syntax highlighting
Plugin 'yuezk/vim-js'

" Syntax highlighting for React JSX
Plugin 'MaxMEllon/vim-jsx-pretty'

" For Markdown Syntax highlighting, rules and key mappings
Plugin 'plasticboy/vim-markdown'

" Vim Airline for the Vim statusline
Plugin 'vim-airline/vim-airline'

" Vim Airline Themes
Plugin 'vim-airline/vim-airline-themes'

" Tmuxline
Plugin 'edkolev/tmuxline.vim'

call vundle#end()
filetype plugin indent on

" NERDTree Config
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
let g:NERDTreeQuitOnOpen = 1 " Close NERDTree after selecting a file to open
" let g:webdevicons_enable = 1
" let g:WebDevIconsUnicodeDecorateFileNodes = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" Add Powerline symbols to Vim Airline
let g:airline_powerline_fonts = 1

" Setup Vim Airline to use base16 colour scheme
let g:airline_theme='base16'

" Basic WebDev Config
set number
syntax on
" Set base16 helper
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
colorscheme base16-material-palenight
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
" Set abbreviation for expanding a PHP tag
au filetype php :iabbrev php <?php ?><Left><Left><Left>
au filetype scss setlocal shiftwidth=2 tabstop=2 noexpandtab 

" Custom Colours
hi User1 ctermfg=252 ctermbg=18
hi User2 ctermfg=252 ctermbg=19
hi User3 ctermfg=15 ctermbg=18

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
