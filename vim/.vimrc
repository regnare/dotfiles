"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ben/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/ben/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" https://github.com/nfnty/vim-nftables
NeoBundle 'nfnty/vim-nftables'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Change tab to 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set showmatch

syntax on
