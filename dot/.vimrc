"-------
" set
"-------

set list
set listchars=tab:>-,trail:-
set showmatch
set expandtab "tab3space"
set shiftwidth=4 "indent space"
set tabstop=4 "tabs is 4spaces"
set wildmenu
set number
set nowrap
set autoindent
set smartindent
set cursorline
set laststatus=2
set statusline=%F%r%m%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set autowrite
set hidden
set ignorecase
set smartcase
set incsearch
set hlsearch

nmap <silent><ESC><ESC> :nohlsearch<CR>

"-------
" color
"-------

colorscheme ron
" colorscheme darkblue
au InsertEnter,InsertLeave * set cursorline!
" au InsertEnter * hi CursolLine ctermbg=DarkYellow
" au InsertLeave * hi CursolLine ctermbg=DarkGray
" highlight CursorLine cterm=bold ctermbg=red
" hi LineNr ctermfg=DarkMagenta

"-------
" syntax
"-------

syntax on

"-------
" plugin
"-------

filetype off

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#rc(expand('~/.vim/bundle'))

NeoBundleFetch "Shougo/neobundle.vim"

NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neocomplete.vim.git'
NeoBundle 'Shougo/vimfiler.vim.git'
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

""NeoBundle 'Shougo/vimshell'
""NeoBundle 'thinca/vim-ref'
""NeoBundle 'Shougo/neobundle.vim.git'
""NeoBundle 'Shougo/neosnippet'
""NeoBundle 'scrooloose/syntastic'
""NeoBundle 'majutsushi/tagbari.git'


NeoBundle "dag/vim2hs"

NeoBundle "ujihisa/neco-ghc"
NeoBundle "ujihisa/ref-hoogle"
NeoBundle "ujihisa/unite-haskellimport"

NeoBundle "eagletmt/ghcmod-vim"
NeoBundle "eagletmt/unite-haddock"

NeoBundle 'thinca/vim-quickrun'
NeoBundle "thinca/vim-ref"

NeoBundle "osyo-manga/vim-watchdogs"


filetype plugin indent on
NeoBundleCheck

set runtimepath+=~/.cabal/bin

autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc


"---
" vimrc
"---

" command! ReloadVimrc source $MYVIMRC


"---
" inoremap
"---

inoremap { {}<Left>
""inoremap } {}<Up><ESC>A
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

inoremap jk <ESC><Left>
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


"---
" nnoremap
"---

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

nnoremap ; :
nnoremap 1 0
nnoremap 0 $

noremap ^? ^H
""noremap ^H
set backspace=2

nnoremap <Space>ev :<C-u>edit $MYVIMRC<CR>
nnoremap <Space>rv :<C-u>source $MYVIMRC<CR>
nnoremap HL :<C-u>help<Space><C-r><C-w><CR>
" nnoremap HK :<C-u>help<Space><cword><CR>

nnoremap <C-n> :<C-u> bn<CR>
nnoremap <C-p> :<C-u> bp<CR>
noremap <F4> :grep <cword> ./*

"---
" vnoremap
"---

vnoremap ; :
vnoremap 1 0
vnoremap 0 $

"---
" cnoremap
"---

cnoremap <C-a> <Home>
cnoremap <C-b> <Left>
cnoremap <C-d> <Del>
cnoremap <C-e> <End>
cnoremap <c-f> <right>
cnoremap <c-n> <down>
cnoremap <C-p> <Up>
cnoremap <Esc><C-B> <S-Left>
cnoremap <Esc><C-F> <S-Right>

"---
" java
"---

function! JAVANewFile(fn)
    let file = a:fn . ".java"
    execute "w " . expand(a:file)
    execute "e " . expand(a:file)
"   w \<C-r>=expand(a:fn)
"   e \<C-r>=expand(a:fn)
endfunction

function! ArgToFunction(fn)
"    execute s#\(" . expand(a:wd) . "\)#" . expand(a:fn) . "(\1)"
"    s#\<cword>#\=expand(a:fn)(\1)
endfunction

"---
" javascript
"---

augroup SkeletonAu
    autocmd!
    autocmd BufNewFile *.js 0r $HOME/.vim/templates/skel.js
    autocmd BufNewFile *.js 1s#@filename#\=expand('%:r')
augroup END

function! JSCommentToCode()
    %s/\(.\+\n\)/\1
    %s/\(\s*\)\(\/\/ vars\)/\1\2\1var @var      = @val;
    %s/\(\s*\)\(\/\/ func \)\(.\+\)/\1\2\3\1function \3(@args) {\1}
endfunction

"---
" macvim-kaoriya
"---

if has('gui_macvim')

    set transparency=20
    set guifont=Monaco:h12
    set lines=90 columns=200
    set guioptions-=T
    set nobackup
    set visualbell t_vb=
    colorscheme ron

    set fuoptions=maxvert,maxhorz
    autocmd GUIEnter * set fullscreen

endif

"---
" vim-indent-guides
"---

set runtimepath+=~/.vim/plugin/vim-indent-guides

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

"---
" macvim-kaoriya
"---

set runtimepath+=~/.vim/plugin/qfixapp
let QFixHowm_Key = 'g'

let howm_dir             = '~/howm'
let howm_fileencoding    = 'utf-8'
let howm_fileformat      = 'unix'

let QFixHowm_FileType    = 'howm_memo.markdown'
let QFixHowm_FoldingPattern    = '^[=.*[]'

let QFixHowm_HomeMode    = 0
let QFixHowm_Title       = '#'
let suffix               = 'md'
let QFixHowm_UserFileType    = 'markdown'
let howm_filename        = '%Y/%m/%Y-%m-%d-%H%M%S.'.suffix


let g:vimfiler_as_default_explorer = 1
let g:neocomplete#enable_at_startup = 1
let g:haskell_conceal_wide = 1
