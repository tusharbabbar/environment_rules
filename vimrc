set smartindent
set tabstop=4
set shiftwidth=4
set expandtab 
set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m
syntax enable
set term=xterm-256color
set nu
autocmd FileType python compiler pylint
let NERDTreeIgnore = ['\.pyc$']
set background=dark
colorscheme solarized

"jedi settings
let g:jedi#auto_initialization = 0
let g:jedi#use_splits_not_buffers = "left"


