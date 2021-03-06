""" gvim theme
if has('gui running')
  """ if gvim
  colorscheme evening " soft dark, high contrast

  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Hack:h10:cANSI:qDRAFT,Consolas:h11:cANSI
  endif
else
  """ if vim
  colorscheme desert " soft colors
endif

set list
set listchars=tab:>-,trail:.

""" syntax processing
syntax enable " enable syntax processing

""" tab controls
set tabstop=2 " visual length of a tab
set softtabstop=2 " number of spaces to act as a tab
set expandtab " tab inserts spaces

""" ui controls
set number " line numbers
set relativenumber " use relative line numbers
" set showcmd
set cursorline " highlight current line
set showmatch " show matching brace
set colorcolumn=60,80,100,120 " show columns at these colomns

""" interaction
set wildmenu " vim native autocomplete

""" efficiency
set lazyredraw " redraw only when needed

""" searching
set incsearch " search as characters are entered
set hlsearch " highlight search
set ignorecase " ignore case by default
set smartcase " case insensitive search unless an uppercase letter is used

""" Related to backspaces
set backspace=indent,eol,start

""" folding
" set foldenable " enable folding
set nofoldenable " keep folds open by default
" set foldnestmax=10 " max number of folds
" set foldmethod=indent " create folds based on indentation
" nnoremap <space> za " open/close fold

""" filetype specific configurations
source ~/.vim/filetype/haskell.vim
source ~/.vim/filetype/python.vim
source ~/.vim/filetype/cs.vim
