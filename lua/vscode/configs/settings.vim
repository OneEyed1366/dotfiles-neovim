" Set vim defaults on first load. To override these, the user can just
" override vim.opt in their own config, no bells or whistles attached.
set hidden
set updatetime=200
set timeoutlen=400
set background=dark
set completeopt=menu,menuone,preview,noinsert,noselect
set shortmess=atsc
set inccommand=split
set path=**
set signcolumn=auto:2-3
set foldcolumn=auto:9
set formatoptions+=j
set smartindent
set copyindent
set preserveindent
set cursorline
set nosplitright
set splitbelow
set scrolloff=4
set noshowmode
set mouse=a
set nowrap
set noswapfile
set expandtab
set conceallevel=0
set foldenable
" Execute user's `config.lua` so they can modify the doom global object.
let ok = 0
let err = ""
" Apply the necessary `doom.field_name` options
set shiftwidth=2
set softtabstop=2
set tabstop=2
if exists('+termguicolors')
  set termguicolors
elseif exists('+guicolors')
  set guicolors
endif

set noundofile
set undodir=
" Use system clipboard
set clipboard=unnamedplus

set ignorecase
set smartcase
set number
set relativenumber

