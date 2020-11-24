call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'neomake/neomake'
Plug 'terryma/vim-multiple-cursors'
Plug 'machakann/vim-highlightedyank'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'

call plug#end()

let g:deoplete#enable_at_startup = 1

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


" NERDTree
" ======================================
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

hi HighlightedyankRegion cterm=reverse gui=reverse
" set highlight duration time to 1000 ms, i.e., 1 second
let g:highlightedyank_highlight_duration = 1000

colorscheme gruvbox
set background=dark " use dark mode

set notermguicolors


nnoremap tn  :tabnew<Space>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap th  :tabfirst<CR>
nnoremap tl  :tablast<CR>
