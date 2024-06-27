:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rust-lang/rust.vim'
Plug 'https://github.com/fatih/vim-go'
Plug 'https://github.com/girishji/vimcomplete'
Plug 'https://github.com/github/copilot.vim'
Plug 'https://github.com/ryanoasis/vim-devicons'
"Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/preservim/tagbar'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/neoclide/coc.nvim'
"Plug 'https://github.com/akinsho/toggleterm.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

call plug#end()

lua require("toggleterm").setup()
:colorscheme gotham

nmap <F8> :TagbarToggle<CR>
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :ToggleTerm<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeFirArrowCollapsible="~"

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
