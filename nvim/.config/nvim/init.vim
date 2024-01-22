" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible
set encoding=UTF-8
set guifont=Jetbrains-Mono:h11
" Set Dein base path (required)
let s:dein_base = '/home/aleon/.local/share/dein'

" Set Dein source path (required)
let s:dein_src = '/home/aleon/.local/share/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('nvimdev/dashboard-nvim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('sheerun/vim-polyglot')
call dein#add('Shougo/deoplete.nvim')
call dein#add('Yggdroot/indentLine')
call dein#add('preservim/nerdtree')
call dein#add('catppuccin/nvim', {'name': 'catppuccin'})
call dein#add('ryanoasis/vim-devicons')
call dein#add('nvim-lua/plenary.nvim')
call dein#add('nvim-telescope/telescope.nvim', { 'rev': '0.1.1' })
call dein#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
" Finish Dein initialization (required)
call dein#end()

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"Tema de Nvim"
colorscheme catppuccin-mocha

"Airline config"
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo
let g:airline_powerline_fonts = 1
set noshowmode

"Deoplete"
let g:deoplete#enable_at_startup = 1

"IndentLine"
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
