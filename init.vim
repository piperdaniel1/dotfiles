set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set guicursor=
set nu
set relativenumber
set signcolumn=yes
set incsearch
set nohlsearch
set hidden
set noerrorbells
set scrolloff=8
set cmdheight=2
set updatetime=50
set colorcolumn=100

nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
nnoremap fb <cmd>Telescope buffers<cr>
nnoremap fh <cmd>Telescope help_tags<cr>

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
