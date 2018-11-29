set nocompatible
set relativenumber
set number

set swapfile

filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

call plug#begin('~/.local/share/nvim/plugged')

Plug 'AndrewRadev/splitjoin.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'andrewstuart/vim-kubernetes'
Plug 'easymotion/vim-easymotion'
Plug 'ekalinin/dockerfile.vim'
Plug 'elmcast/elm-vim'
Plug 'ervandew/supertab'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'flowtype/vim-flow'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'jparise/vim-graphql'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'leafgarland/typescript-vim'
Plug 'matze/vim-move'
Plug 'mileszs/ack.vim'
Plug 'mxw/vim-jsx'
Plug 'quramy/tsuquyomi'
Plug 'raimondi/delimitmate'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'seagoj/whitespace.vim'
Plug 'sheerun/vim-polyglot'
Plug 'slashmili/alchemist.vim'
Plug 'szw/vim-tags'
Plug 'terryma/vim-multiple-cursors'
Plug 'thoughtbot/vim-rspec'
Plug 'joshdick/onedark.vim'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

filetype plugin indent on
filetype plugin on

" colors
syntax on
set t_Co=256
set background=dark
colorscheme onedark

let g:solarized_termcolors=256
set termguicolors

" indenting
set ts=2 sw=2 et

"Wrap at 110 and show the ruler
set textwidth=110
set colorcolumn=+0

" Go
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_fmt_fail_silently = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_auto_type_info = 1

" Rspec
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)

" Easy Align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Elm
let g:elm_format_autosave = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_elixir_checker = 1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

let g:elm_syntastic_show_warnings = 1

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_html_checkers = ['eslint']
let g:syntastic_elixir_checkers = ['elixir']

let g:xml_syntax_folding = 1

let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'onedark'

" Key Bindings
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

set timeout ttimeoutlen=50
