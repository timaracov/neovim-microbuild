" ##########################################################
" #   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗   #
" #   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║   #
" #   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║   #
" #   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║   #
" #   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║   #
" #   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝   #
" ##########################################################

set number
set noswapfile
set colorcolumn=90
set scrolloff=16
set tabstop=4
set shiftwidth=4
set shell=/bin/bash
set nowrap
set mouse=a

call plug#begin('~/.vim/plugged')
" Autocompletion
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/nvim-compe'
Plug 'neoclide/coc.nvim', {'branch':'release'}

" Languages support
Plug 'tpope/vim-markdown'
Plug 'fatih/vim-go'
Plug 'lewis6991/gitsigns.nvim'
Plug 'TimUntersberger/neogit'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/plenary.nvim'
Plug 'vimwiki/vimwiki'
" Plug 'glepnir/dashboard-nvim'

" File management
Plug 'preservim/nerdtree'
Plug 'voldikss/vim-floaterm'
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}
Plug 'junegunn/fzf.vim'

" Color schemes
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'xiyaowong/nvim-transparent'
Plug 'projekt0n/github-nvim-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'lukas-reineke/indent-blankline.nvim'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme everforest
let g:airline_theme='onedark'


let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'go']
let NERDTreeShowHidden=1

map <leader>' :Neogit<CR> 

map fc :GFiles<CR>
map fv :LfCurrentDirectory<CR>
map fm :NERDTree<CR>
map '; :noh<CR>



nmap gd <Plug>(coc-definition)
nmap gr <Plug>(coc-references)

nmap A 0i
nmap I $i<Right>

nmap <leader>b :Bookmark<CR> 

imap jj <Esc>

lua <<EOF
require('gitsigns').setup()
EOF


let g:transparent_enabled = v:true

let g:startify_custom_header = [
 			\'		███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
 			\'		████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
 			\'		██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
 			\'		██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
 			\'		██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
 			\'		╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝',
 			\'']

