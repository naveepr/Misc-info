set nocompatible    " Use Vim defaults (much better!)
call plug#begin('~/.local/share/nvim/plugged')

filetype off

Plug 'gmarik/vundle'

Plug 'tpope/vim-surround'
Plug 'vim-scripts/taglist.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'geoffharcourt/vim-matchit'
Plug 'godlygeek/tabular'
"Plug 'fholgado/minibufexpl.vim'
Plug 'honza/vim-snippets'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
"Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
"Plug 'Valloric/YouCompleteMe'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'Shougo/deoplete.nvim' , { 'do': ':UpdateRemotePlugins' }

call plug#end()
filetype plugin indent on
syntax on
set ignorecase

" show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" 1 tab == 4 spaces
set scrolloff=5
set wildmenu
"set mouse=a
set title
set cursorline
set number
set ruler
set bs=indent,eol,start     " allow backspacing over everything in insert mode
set ai          " always set autoindenting on
" set backup     " keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more
            " than 50 lines of registers
set history=50      " keep 50 lines of command line history

" Be smart when using tabs ;)
set smarttab
" Use spaces instead of tabs
" set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set t_Co=256
set background=light
"colorscheme solarized
"colorscheme gruvbox
"colorscheme PaperColor
"colorscheme zenburn
"colorscheme summerfruit256
colorscheme lucius
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1


" Plugins
"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
let g:airline#extensions#syntastic#enabled = 1
set laststatus=2
"let g:airline#extensions#tabline#switch_buffers_and_tabs = 1
"let g:airline#extensions#tabline#show_buffers = 1 " enable/disable displaying buffers with a single tab
let g:airline#extensions#tabline#formatter = 'default'
let g:Tlist_Use_SingleClick=1

"minibuff
let mapleader=","
let g:tabular_loaded = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
let python_highlight_all =1

:nnoremap <Leader>a :bnext<CR>
:nnoremap <Leader>s :bprevious<CR>
:nnoremap <C-X> :bdelete<CR>

imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

"Doxygen
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="Mathias Lorente"
let g:DoxygenToolkit_licenseTag="My own license"

"Ctrlp funky
nmap <Leader>p :CtrlPMixed<Cr>
nnoremap <Leader>f :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" deoplete
let g:deoplete#enable_at_startup = 1
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
nmap <Leader>b :buffers<CR>:buffer<Space>
let g:ctrlp_working_path_mode = 0
nmap <F7>   :TlistToggle<CR>
nmap <F8>   :NERDTreeToggle<CR>
nmap <F9>   :Tabularize /
nmap <F10>  :bp<bar>sp<bar>bn<bar>bd

" if you like control + vim direction key to navigate
" windows then perform the remapping
noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Perforce related
let g:perforce_open_on_change = 1 " (default: 0)
let g:perforce_open_on_save = 1 "(default: 1)
" let g:perforce_auto_source_dirs  (default: [])
let g:perforce_prompt_on_open = 1 "(default: 1)

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

if has("cscope") && filereadable("/usr/bin/cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif
