"-------
" set
"-------
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
set wildmenu
set cursorline
set laststatus=2
set ignorecase
set smartcase
set statusline=%F%r%m%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set autowrite
set hidden
"-------
" color
"-------
colorscheme darkblue
""autocmd InsertEnter,InsertLeave * set cursorline!
highlight CursorLine cterm=bold ctermbg=red
hi LineNr ctermfg=DarkMagenta
"-------
" syntax
"-------
syntax on
"-------
" plugin
"-------

" set nocompatible
" filetype off

" if has('vim_starting')
"   set runtimepath+=~/.vim/.bundle/neobundle.vim.git
"
"   call neobundle#rc(expand('~/.vim/.bundle'))
" endif
"
" " NeoBundle 'git://github.com/Shougo/unite.vim.git'
" " NeoBundle 'git://github.com/Shougo/neocomplcache.git'
" " NeoBundle 'thinca/vim-ref'
" " NeoBundle 'git://github.com/Shougo/neobundle.vim.git'
" " NeoBundle 'Shougo/neosnippet'
" " NeoBundle 'scrooloose/syntastic'
" " NeoBundle 'Shougo/vimshell'
" " NeoBundle 'git://github.com/majutsushi/tagbari.git'
"
" filetype plugin on
" filetype indent on
"
"---
" vimrc
"---

" command! ReloadVimrc source $MYVIMRC
"---
" cobol
"---
" noremap ;; f;ce
" command! IfCbl r ~/if.cbl
" noremap <C-i> :<C-u><Space><C-r><C-w><CR>

"---
" map
"---

map ' `

"---
" map
"---

" imap <C-k> <ESC>"*pa

"---
" inoremap
"---
inoremap { {}<Up>
inoremap } {}
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

inoremap jk <ESC><Left>
inoremap jj <Down>
inoremap ll <Left>

"---
" nnoremap
"---

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

nnoremap 1 0
nnoremap 0 $

nnoremap <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <Space>rv :<C-u>source $MYVIMRC<CR>
nnoremap HL :<C-u>help<Space><C-r><C-w><CR>

nnoremap <C-n> :<C-u> bnext<CR>
nnoremap <C-p> :<C-u> previous<CR>
" nnoremap <F4> :grep <cword> ./*

"---
" cnoremap
"---

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <C-f> <Right>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <Esc><C-B>    <S-Left>
cnoremap <Esc><C-F>    <S-Right>

"---
" javascript
"---

augroup SkeletonAu
    autocmd!
    autocmd BufNewFile *.js 0r $HOME/.vim/templates/skel.js
augroup END

function! JSCommentToCode()
    %s/\(.\+\n\)/\1
    %s/\(\/\/ var\)/\1var @var = @val;
    %s/\(\/\/ func \)\(.\+\)/\1\2function \2() {}
endfunction
