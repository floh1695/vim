""" gvim theme
if has('gui running')
	""" if gvim
	colorscheme evening " soft dark, high contrast
else
	""" if vim
	colorscheme desert " soft colors
endif

""" syntax processing
syntax enable " enable syntax processing

""" tab controls
set tabstop=4 " visual length of a tab
" set softtabstop=4 " number of spaces to act as a tab
" set expandtab " tab inserts spaces

""" ui controls
set number " line numbers
set relativenumber " use relative line numbers
" set showcmd
set cursorline " highlight current line
set showmatch " show matching brace
set colorcolumn=100,120 " show columns at these colomns

""" interaction
set wildmenu " vim native autocomplete

""" efficiency
set lazyredraw " redraw only when needed

""" searching
set incsearch " search as characters are entered
set hlsearch " highlight search
set ignorecase " ignore case by default
set smartcase " case insensitive search unless an uppercase letter is used

""" folding
" set foldenable " enable folding
set nofoldenable " keep folds open by default
" set foldnestmax=10 " max number of folds
" set foldmethod=indent " create folds based on indentation
" nnoremap <space> za " open/close fold

""" filetype specific configurations
source ~/.vim/filetype/haskell.vim
source ~/.vim/filetype/python.vim
