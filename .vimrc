set nocompatible              " be iMproved, required
filetype off                  " required

"General Config
set splitbelow
setlocal omnifunc=syntaxcomplete#Complete


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
Plugin 'fatih/vim-go'
Plugin 'sjl/badwolf'
Plugin 'junegunn/goyo.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'itchyny/lightline.vim'
Plugin 'reedes/vim-colors-pencil'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dhruvasagar/vim-table-mode'

"There is issues when I install YCM on mac
"Plugin 'Valloric/YouCompleteMe'


" CtrlP for file searching
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*.so,*.swp,*.zip

"Unite family for file exploring
Plugin 'shougo/unite.vim'
"
" Vimfiler(vimfiler depends on unite.vim)
Plugin 'shougo/vimfiler.vim'
call vimfiler#custom#profile('default', 'context', {
            \ 'split': 1,
            \ 'winwidth' : 40,
            \ 'no_quit': 1,
			\ 'explorer': 1
            \ })

:let g:vimfiler_as_default_explorer = 1  " set vimfiler as default file exporer
:ab vfe VimFilerExplorer
:ab vf VimFiler
"Run VimFilerExplore When opening a directory


"Before using any plugin for auto complete, I want to try vim's vaniala autocomplete
"Plugin 'shougo/neocomplete.vim'
"let g:neocomplete#enable_at_startup = 1

"

" some vim settings
set tabstop=4

" Markdown config
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

" Parenthesis
Plugin 'tpope/vim-surround'
Plugin 'townk/vim-autoclose'

" Shell 
" Todo: You need to compile vimproc manually: `cd ~/.vim/bundle/vimproc.vim && make
Plugin 'shougo/vimproc.vim'
Plugin 'shougo/vimshell.vim'
let g:vimshell_split_command = 'split'
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '
let g:vimshell_popup_height = 20
" Setup key mapping F12 to open a shell
:map <F12> :VimShellPop -split <CR>


" Code Formatter
Plugin 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat<CR>
"More info about formatter for different language: https://github.com/chiel92/vim-autoformat
let g:formatterpath = ['/usr/local/bin', '/usr/bin/tidy','/usr/local/go/bin/gofmt']

" Java Complete
Plugin 'artur-shaik/vim-javacomplete2'
autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo

