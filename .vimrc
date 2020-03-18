set nocompatible              " Uses VIM settings, not Vi, must be first
filetype off                  " required

" Vundle setup, commands between vundle#begin/end.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/goyo.vim'

call vundle#end()				" required
filetype plugin indent on		" required

" Plugin settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

" Enable colde folding and set spacebar for action
set foldenable
set foldlevel=10
set foldmethod=indent
set foldnestmax=10
nnoremap <space> za

" Allows mouse behavior similar to other OSX apps
if has('mouse')
  set mouse=a
endif

" Shortcut to Mute Highlighting
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Root permission on a file inside VIM
" cmap w!! w !sudo tee >/dev/null %

" Mappings to traverse buffer list, quit a buffer and start new file
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> [q :bp <BAR> bd #<CR>
nnoremap <silent> [N :enew<CR>

set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set history=200					" keep 200 lines of command line history
set ruler						" show the cursor position all the time
set showcmd						" display incomplete commands
set incsearch					" do incremental searching
set number						" shows line numbers always
set relativenumber				" show relative line numbers
set expandtab					" use spaces instead of tabs
set tabstop=4					" sets the tabs to 4 spaces
" set shiftwidth=4				" shifts to 4 spaces
set softtabstop=4				" soft tabs to 4 spaces
set hlsearch					" highlight search terms
set ic							" ignore case during searches
set autoindent					" start new line at the same indentation level
syntax enable					" syntax highlighting
set cmdheight=1					" the commandbar height
set showmatch					" show matching brackets
set nobackup					" do not keep a backup file, use versions instead
set noswapfile					" no annoying intermediate swap files
set wildmode=longest,list		" <Tab> shows command suggestions
" set nrformats-=octal			" treats numerals as decimals, not yet sold on this...

