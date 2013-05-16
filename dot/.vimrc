set expandtab "tab3space"
set autoindent
set smartindent
set incsearch
set list
set listchars=tab:>-,trail:-
set number
set shiftwidth=4 "indent space"
set showmatch "()"
set tabstop=4 "tabs is 4spaces"
colorscheme darkblue
set nocursorline
" autocmd InsertEnter,InsertLeave * set cursorline!
" highlight CursorLine ctermbg=Black
" highlight CursorLine ctermfg=Blue
syntax on
" cubiclouve vim vol.1
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

"-------
" plugin
"-------

set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/.bundle/neobundle.vim.git

  call neobundle#rc(expand('~/.vim/.bundle'))
endif

NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'thinca/vim-ref'
NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/vimshell'
NeoBundle 'git://github.com/majutsushi/tagbari.git'

filetype plugin on
filetype indent on

"---
" foo
"---

command! ReloadVimrc source $MYVIMRC
nnoremap <silent> <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <Space>rv :<C-u>source $MYVIMRC<CR>
" noremap ;; f;ce
command! IfCbl r ~/if.cbl
noremap <C-i> :<C-u><Space><C-r><C-w><CR>
nnoremap H; :<C-u>help<Space><C-r><C-w><CR>

