set nocompatible
set relativenumber
set number

set swapfile
set dir=~/tmp/vim

set directory^=$HOME/.vim/tmp/
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'Align'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Shougo/vimproc.vim', {'do' : 'make'}
Plugin 'VundleVim/Vundle.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'easymotion/vim-easymotion'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'elmcast/elm-vim'
Plugin 'ervandew/supertab'
Plugin 'flowtype/vim-flow'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jparise/vim-graphql'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plugin 'junegunn/vim-easy-align'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'leafgarland/typescript-vim'
Plugin 'liquid.vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'matze/vim-move'
Plugin 'mileszs/ack.vim'
Plugin 'mxw/vim-jsx'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nginx.vim'
Plugin 'quramy/tsuquyomi'
Plugin 'raimondi/delimitmate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'seagoj/whitespace.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'slashmili/alchemist.vim'
Plugin 'szw/vim-tags'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tomasiser/vim-code-dark'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin on
syntax on
set t_Co=256
set background=dark
colorscheme codedark

let g:solarized_termcolors=256

" indenting
set ts=2 sw=2 et
let g:indent_guides_start_level=2
set autoindent

"Wrap at 110 and show the ruler
set textwidth=110
set colorcolumn=+0

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
let g:airline_theme = 'codedark'

" Key Bindings
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Vim Move
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
