" basic preferences
set tabstop=4
set softtabstop=4
set shiftwidth=4
set exrc
set nowrap
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

" Change tab size based on file type
augroup FileTypeSpecificAutocommands
    autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType typescript setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType typescriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2
    autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
augroup END

" Telescope fuzzy finder remaps
nnoremap zf <cmd>Telescope find_files<cr>
nnoremap zg <cmd>Telescope live_grep<cr>
nnoremap zb <cmd>Telescope buffers<cr>
nnoremap zh <cmd>Telescope help_tags<cr>

" Coc Remaps
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<tab>\<c-r>=coc#on_enter()\<CR>"

" Github Copilot Remaps
" map <F3> :Copilot enable<cr>
" map <F2> :Copilot disable<cr>

" Plugins
call plug#begin()
" Install COC for the LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Install plenary/telescope for fuzzy finding
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Color scheme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'vim-python/python-syntax', { 'branch': 'master' }

" Install copilot for copilot stuff
" Plug 'github/copilot.vim'
call plug#end()

colorscheme tokyonight
let g:python_highlight_string_format = 1
let g:python_highlight_builtin_objs = 1
