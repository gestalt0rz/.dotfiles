

" Vundle
set nocompatible             " not compatible with the old-fashion vi mode
set backspace=indent,eol,start
filetype off                 " required!

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" theme
Plugin 'dracula/vim'

" plugin
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'zxqfl/tabnine-vim'


syntax on
colorscheme dracula

set clipboard=unnamed
set number                   " enable line numbers
set autoindent               " enable autoindent
set autoread                 " auto read when file is changed from outside
set history=50               " keep 50 lines of command line history
set mouse=a                  " mouse support
set cursorline               " highlight current line
set showmatch                " Cursor shows matching ) and }
set noshowmode
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }


map <C-n> :NERDTreeToggle<CR>
