version 6.0
if &cp | set nocp | endif
map Q gq
let s:cpo_save=&cpo
set cpo&vim
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set directory=~/.tmp
set display=truncate
set guifont=-b&h-lucidatypewriter-medium-r-normal-*-14-140-*-*-m-*-iso8859-1
set history=200
set incsearch
set langnoremap
set nolangremap
set mouse=a
set nrformats=bin,hex
set ruler
set runtimepath=~/.vim,~/.vim/pack/vendor/start/nerdtree,/usr/sgug/share/vim/vimfiles,/usr/sgug/share/vim/vim81,/usr/sgug/share/vim/vimfiles/after,~/.vim/after
set scrolloff=5
set showcmd
set ttimeout
set ttimeoutlen=100
set wildmenu
set window=47
" vim: set ft=vim :

" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" set termguicolors
syntax on
set swapfile
set dir=/usr/people/jenna/.tmp
" colorscheme pico
colorscheme amdark
" autocmd VimEnter * NERDTree | wincmd p
" autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
set nu
