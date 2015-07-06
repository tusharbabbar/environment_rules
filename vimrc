execute pathogen#infect()
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab 
"filetype on
"filetype plugin on
"set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
"set errorformat=%f:%l:\ %m
syntax enable
set term=xterm-256color
set nu
"autocmd FileType python compiler pylint
let NERDTreeIgnore = ['\.pyc$']
" solarized options 
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

"colorscheme solarized
autocmd VimEnter * NERDTree
let g:NERDTreeDirArrows=0 "http://stackoverflow.com/questions/8753286/nerd-tree-enter-does-not-open-sub-dirs

"jedi settings
"let g:jedi#auto_initialization = 0
"let g:jedi#use_splits_not_buffers = "left"

"recommended settings for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"settings for controlP
"set runtimepath^=~/.vim/bundle/ctrlp.vim

"vim-airline config to show buffers on top
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let syntastic_mode_map = { 'passive_filetypes': ['html'] } "Disable syntastic for html
