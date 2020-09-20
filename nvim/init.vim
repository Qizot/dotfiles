let mapleader =" "
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k

" Resizing splits
nnoremap <silent> <C-Right> :vertical resize +3<CR>
nnoremap <silent> <C-Left> :vertical resize -3<CR>
nnoremap <silent> <C-Down> :resize +3<CR>
nnoremap <silent> <C-Up> :resize -3<CR>

nnoremap <leader>rc :%s/\<<C-r><C-w>\>/
vnoremap Y "+y

if exists('g:vscode')
    xmap gc  <Plug>VSCodeCommentary
    nmap gc  <Plug>VSCodeCommentary
    omap gc  <Plug>VSCodeCommentary
    nmap gcc <Plug>VSCodeCommentaryLine
    call plug#begin('~/.local/share/nvim/plugged')
    " seems not to be working
    " Plug 'terryma/vim-multiple-cursors'
    Plug 'mattn/emmet-vim'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/vim-easy-align'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    call plug#end()
    nnoremap <silent> <C-w>j :<C-u>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
    xnoremap <silent> <C-w>j :<C-u>call VSCodeNotify('workbench.action.focusBelowGroup')<CR>
    nnoremap <silent> <C-w><C-j> :<C-u>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
    xnoremap <silent> <C-w><C-j> :<C-u>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
    nnoremap <silent> <C-w>k :<C-u>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
    xnoremap <silent> <C-w>k :<C-u>call VSCodeNotify('workbench.action.focusAboveGroup')<CR>
    nnoremap <silent> <C-w><C-i> :<C-u>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
    xnoremap <silent> <C-w><C-i> :<C-u>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
    nnoremap <silent> <C-w>h :<C-u>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
    xnoremap <silent> <C-w>h :<C-u>call VSCodeNotify('workbench.action.focusLeftGroup')<CR>
    nnoremap <silent> <C-w><C-h> :<C-u>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
    xnoremap <silent> <C-w><C-h> :<C-u>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
    nnoremap <silent> <C-w>l :<C-u>call VSCodeNotify('workbench.action.focusRightGroup')<CR>
    xnoremap <silent> <C-w>l :<C-u>call VSCodeNotify('workbench.action.focusRightGroup')<CR>

    nmap <silent> ga <Plug>(EasyAlign)
    xmap <silent> ga <Plug>(EasyAlign)
else
    set relativenumber
    set colorcolumn=80
    set nu rnu
    filetype on
    filetype plugin indent on
    :autocmd Filetype typescript set softtabstop=2
    :autocmd Filetype typescript set sw=2
    :autocmd Filetype typescript set ts=2

    
    call plug#begin('~/.local/share/nvim/plugged')

    " Plugins theme related"
    Plug 'joshdick/onedark.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'


    " Plugins writing code related
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-commentary'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'junegunn/vim-easy-align'
    Plug 'dhruvasagar/vim-table-mode'

    " Plugins nerdtree related
    Plug 'scrooloose/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'

    " Plugins for special usecase
    Plug 'mattn/emmet-vim'
    Plug 'elixir-editors/vim-elixir'
    Plug 'elixir-lsp/elixir-ls'
    Plug 'rust-lang/rust.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

    " Plugins for fun
    Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
    call plug#end()


    command! -nargs=0 Prettier :CocCommand prettier.formatFile


    "Nerd tree binding
    nmap <leader>t :NERDTreeToggle<cr>
    nmap <leader>v :NERDTreeFind<cr>
    "FZF binding
    nmap <leader>f :FZF<cr>
    "Coc bindings"
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> ga <Plug>(EasyAlign)
    xmap <silent> ga <Plug>(EasyAlign)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)
    nmap <leader>rf <Plug>(coc-refactor)
    nmap <leader>rn <Plug>(coc-rename)
    xmap <leader>F  <Plug>(coc-format-selected)
    nmap <leader>F  <Plug>(coc-format)
    nmap <leader>h :call CocAction("doHover")<CR>
    "vim-fugitive mapings
    nmap <leader>gs :G<CR>
    nmap <leader>gg :GitGutterToggle<CR>
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

