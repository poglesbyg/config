set nocompatible
set autoindent
set smartindent

" from veiset

set wildmenu " Cool looking menu shit lol
set backspace=indent,eol,start
set backup " keep a backup file
set history=50 " keep 50 lines of command line history
set ruler " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incremental searching
set number " show line numbers
set numberwidth=4 " line numbers 4 chars wide
set shiftwidth=4 " indent 4 spaces automatically
set tabstop=4 " tabs look 4 spaces wide
set expandtab
set showmatch " show matching braces
set showmode " show the mode i'm in
syntax on " well duh, highlist that shit!
set hlsearch " highlight search stuff too
set t_Co=256 " convince terminals to look pretty

set noeb vb t_vb= " no error bell

" pathogen http://www.vim.org/scripts/script.php?script_id=2332
execute pathogen#infect()
call pathogen#runtime_append_all_bundles()
" Enable filetype plugins
filetype on
filetype plugin indent on
" latex stuff
let g:tex_flavor='latex'
" indentation for tex files
au FileType tex set sw=2
" Spell check
au FileType tex setlocal spell spelllang=en_us
" Vim-latex rules:
" to enable \ll to run automatically for pdfs
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" gundo (history plugin)
" http://sjl.bitbucket.org/gundo.vim
nnoremap <F4> :GundoToggle<CR> 
let g:gundo_width = 60
let g:gundo_preview_height = 40
let g:gundo_right = 1

colorscheme zenburn " http://www.vim.org/scripts/script.php?script_id=415
let g:zenburn_high_Contrast=3
colors zenburn

" status line
set laststatus=2
set statusline=%t "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h "help file flag
set statusline+=%m "modified flag
set statusline+=%r "read only flag
set statusline+=%y "filetype
set statusline+=%= "left/right separator
set statusline+=%c, "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file
