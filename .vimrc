" set compatibility mode to off
set nocompatible

" set clipboard to x clipboard
set clipboard=unnamedplus

" enable pathogen
source /home/$USER/.vim/autoload/pathogen.vim
execute pathogen#infect()

" colorize based on syntax
syntax on

" turn on numbering
set number relativenumber

" set tab width to 2 whitespaces
set tabstop=2
set shiftwidth=2

" expand tab to spaces
set expandtab

" set word wrap...
set wrap
set linebreak

" ...without line breaks
set nolist

" prevent insertion of line breaks in newly entered text
set textwidth=0
set wrapmargin=0

" Auto-wrap text using textwidth only on new lines (doesn't wrap existing long lines)
set formatoptions-=t

" enable filetype plugin
filetype plugin indent on

set pastetoggle=<F3>
"set runtimepath^=~/.vim,~/.vim/bundle,/usr/share/vim/vimfiles,/usr/share/vim/vim74,/usr/share/vim/vimfiles/after,~/.vim/after

" Remove trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Adjust formatting for blesta transaction list to be more readable 
nnoremap <silent> <F4> :let _format=@/<Bar>:%s/\tEdit//ge<Bar>:%s/\t$0.00\t$0.00//ge<Bar>:%s/\tCredited\tApplied//ge<Bar>:%s/\tOptions//ge<Bar>:%s/\t\s/\t/ge<Bar>:%s/\t\d\d\d\d\t/\t/ge<Bar>:%s/\tNumber//ge<Bar>:%s/\t/] - [/ge<Bar>:%s/^/\[/ge<Bar>:%s/$/\]/ge<Bar>:let @/=_format<Bar><CR><CR>:set nonumber<Bar>:set norelativenumber<CR>
":%s/^/[/ge<Bar>:%s/$/]/ge<Bar><CR>
 
"  :%s/\tEdit//ge
"  :%s/\t$0.00\t$0.00//ge
"  :%s/\tCredited\tApplied//ge
"  :%s/\tOptions//ge
"  :%s/\t\s/\t/ge
"  :%s/\t\d\d\d\d//ge
"  :%s/\tNumber//ge
"  :%s/\t/] - [/ge
"  :%s/^/[/ge
"  :%s/$/]/ge
"  <CR>


" More natual split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
