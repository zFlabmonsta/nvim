set nocompatible              " be iMproved, required
filetype plugin on            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdTree'			" directory tab on vim
"*************************************************************
"Git
Plugin 'airblade/vim-gitgutter'			" shows modified git files
Plugin 'tpope/vim-fugitive'
"*************************************************************
"Theme
Plugin 'dracula/vim'                    " dracula theme
Plugin 'itchyny/lightline.vim' 			" Modified status bar
call vundle#end()            " required

"vim-plug Preference
call plug#begin()

" Async autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Completion from other opened files
Plug 'Shougo/context_filetype.vim'
" Python autocompletion
Plug 'zchee/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
" Just to add the python go-to-definition and similar features, autocompletion
" from this plugin is disabled
Plug 'davidhalter/jedi-vim'

" Automatically close parenthesis, etc
Plug 'Townk/vim-autoclose'

" Surround
Plug 'tpope/vim-surround'

" Indent text object
Plug 'michaeljsmith/vim-indent-object'

" Indentation based movements
Plug 'jeetsukumaran/vim-indentwise'

" Paint css colors with the real color
Plug 'lilydjwg/colorizer'

" Window chooser
Plug 't9md/vim-choosewin'

" Automatically sort python imports
Plug 'fisadev/vim-isort'

" Highlight matching html tags
Plug 'valloric/MatchTagAlways'

" Generate html in a simple way
Plug 'mattn/emmet-vim'

" Linters
Plug 'neomake/neomake'

" Code and files fuzzy finder
 Plug 'ctrlpvim/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
 Plug 'fisadev/vim-ctrlp-cmdpalette'

 "C# IDE
 Plug 'OmniSharp/omnisharp-vim'

call plug#end()

" Deoplete -----------------------------

" Use deoplete.

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
" complete with words from any opened file
let g:context_filetype#same_filetypes = {}
let g:context_filetype#same_filetypes._ = '_'

" Jedi-vim ------------------------------

let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}

" Disable autocompletion (using deoplete instead)
let g:jedi#completions_enabled = 0

" All these mappings work only for python code:
" Go to definition
let g:jedi#goto_command = ',d'
" Find ocurrences
let g:jedi#usages_command = ',o'
" Find assignments
let g:jedi#goto_assignments_command = ',a'
" Go to definition in new tab
nmap ,D :tab split<CR>:call jedi#goto()<CR>

"-------------------------------------------------"

" needed so deoplete can auto select the first suggestion
set completeopt+=noinsert
" comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
set completeopt-=preview

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest


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
set softtabstop=4
set shiftwidth=4

" Backspace problem
set backspace=2

"NERDTree mapping
map <C-n> :NERDTreeToggle<CR>

"Choosewin mapping
nmap  -  <Plug>(choosewin)

"CtrlP mapping
let g:ctrlp_map = '<c-p>'

"Double Escape
inoremap <Esc> <Esc><Esc><Esc>


"clipboard
set clipboard+=unnamed
