set nocompatible              " be iMproved, required
filetype plugin on            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Vundle Preference
"************************************************************
"Syntax
    "Plugin 'dkarter/bullets.vim'            " bullets in vim
    "Plugin 'tpope/vim-git'
    "Plugin 'vimwiki/vimwiki'                " vim wiki
Plugin 'vim-syntastic/syntastic'        
""************************************************************
"Make Life Easier
Plugin 'ctrlpvim/ctrlp.vim'
"Plugin 'tomtom/tcomment_vim'			" comment awareness
Plugin 'easymotion/vim-easymotion'		" jumping tool
Plugin 'scrooloose/nerdTree'			" directory tab on vim
"*************************************************************
"Git
Plugin 'airblade/vim-gitgutter'			" shows modified git files
Plugin 'tpope/vim-fugitive'
"*************************************************************
"Theme
Plugin 'dracula/vim'                    " dracula theme
Plugin 'itchyny/lightline.vim' 			" Modified status bar
"*************************************************************
"SuperTab
Plugin 'ervandew/supertab'

"*************************************************************
" Python-Jedi 
" Plugin 'davidhalter/jedi-vim'

"*************************************************************
" All of your Plugins must be added before the following line
call vundle#end()            " required

"vim-plug Preference
call plug#begin()

  "UltiSnps & vim-snippets
  Plug 'roxma/nvim-completion-manager'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

  "Linter
  Plug 'w0rp/ale'

  "Deoplete
  Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'

  "Python
  Plug 'zchee/deoplete-jedi'
  " Disable open paren when inserting function name
  let g:autocomplete_flow#insert_paren_after_function = 1

  " C
  Plug 'zchee/deoplete-clang'

  " JS
  Plug 'wokalski/autocomplete-flow'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

  let g:deoplete#num_processes = 1
  let g:deoplete#enable_at_startup = 1

  " For func argument completion
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  let g:neosnippet#enable_completed_snippet = 1

call plug#end()

"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Dracula theme
color dracula

" **BASIC SETTINGS** 
syntax on
set relativenumber
set number
set ruler
set hidden
set incsearch
set laststatus=2                           "display status bar
set breakindent                            "wrapped line repeast indent
set emoji                                  "emoji characters are considered full width
set termguicolors                          "use GUI colors for the terminal

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
"set autoindent
"set smartindent

" Backspace problem
set backspace=2

"These are stock theme options
"colorscheme pablo 
"blue.vim
"darkblue.vim
"default.vim
"delek.vim
"desert.vim
"elflord.vim
"evening.vim
"koehler.vim

"NERDTree mapping
map <C-n> :NERDTreeToggle<CR>

"clipboard
set clipboard=unnamed

"*************************************************************
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-d>"

"************************************************************
"Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"************************************************************
