if exists('g:vscode')
    xmap gc  <Plug>VSCodeCommentary
    nmap gc  <Plug>VSCodeCommentary
    omap gc  <Plug>VSCodeCommentary
    nmap gcc <Plug>VSCodeCommentaryLine
    call plug#begin('~/.local/share/nvim/plugged')
    " seems not to be working
    " Plug 'terryma/vim-multiple-cursors'
    Plug 'mattn/emmet-vim'
    call plug#end()
else
    set relativenumber
    set nu rnu
    filetype on
    filetype plugin indent on

    
    " plugins
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'https://github.com/joshdick/onedark.vim.git'
    Plug 'https://github.com/vim-airline/vim-airline'
    Plug 'https://github.com/vim-airline/vim-airline-themes'
    Plug 'https://github.com/WolfgangMehner/bash-support'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-commentary'
    Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
    Plug 'terryma/vim-multiple-cursors'

    Plug 'elixir-editors/vim-elixir'
    Plug 'scrooloose/nerdtree'
    Plug 'mattn/emmet-vim'
    call plug#end()

    let mapleader =" "

    command! -nargs=0 Prettier :CocCommand prettier.formatFile


    "Nerd tree binding
    nmap <leader>t :NERDTreeToggle<cr>
    "FZF binding
    nmap <leader>f :FZF<cr>
    "Coc bindings"
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nmap <leader>rf <Plug>(coc-refactor)
    nmap <leader>rn <Plug>(coc-rename)
    xmap <leader>F  <Plug>(coc-format-selected)
    nmap <leader>F  <Plug>(coc-format)
    nmap <leader>h :call CocAction("doHover")<CR>
    "vim-fugitive mapings
    nmap <leader>gs :G<CR>
    "accept left merge
    nmap <leader>gh :diffget //2<CR>
    "accept right merge
    nmap <leader>gl :diffget //3<CR>

    "Terminal exit
    tnoremap <Esc> <C-\><C-n>


    "Jump to next/previous buffer
    nmap <C+S+L> :bn
    nmap <C+S+H> :bp

    "Search in files
    nmap <C-g> :Ag<CR>


    set ft=elixir

    set rtp+=/usr/bin/fzf
    
    colorscheme onedark
    let g:solarized_termcolors = 256
    set background=dark
    let g:airline_powerline_fonts = 1
    let g:airline_theme='solarized'
    let g:airline_solarized_bg='dark'
    let g:airline#extensions#tabline#enabled = 1

endif

" Remap jumping between splits to omit using 'w'
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k

" Resizing splits
nnoremap <silent> <C-Left> :vertical resize +3<CR>
nnoremap <silent> <C-Right> :vertical resize -3<CR>
nnoremap <silent> <C-Up> :resize +3<CR>
nnoremap <silent> <C-Down> :resize -3<CR>

