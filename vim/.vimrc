" VIM Configuration Profile

" Use the PowerLine plugin. Change Python directory if needed.
set rtp+=$HOME/.local/lib/python3.8/site-packages/powerline/bindings/vim/
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

" Always show the command as it is being typed.
set showcmd

set nu rnu
set tabstop=4
set softtabstop=4
set nowrap
set smartindent
set shiftwidth=4
set guicursor=
set noerrorbells

set colorcolumn=100
set signcolumn=yes


call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
call plug#end()

set background=dark
colorscheme gruvbox

" NerdTree Settings
nmap <F5> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
autocmd VimEnter * NERDTree
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
