"Pluggins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'neovim/nvim-lspconfig'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

Plug 'davidhalter/jedi-vim'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }

Plug 'zchee/deoplete-jedi'

Plug 'vim-airline/vim-airline'

Plug 'jiangmiao/auto-pairs'

Plug 'sbdchd/neoformat'

Plug 'scrooloose/nerdtree'

Plug 'neomake/neomake'

Plug 'morhetz/gruvbox'

Plug 'preservim/tagbar'

Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lua/plenary.nvim'

Plug 'sheerun/vim-polyglot'


"For laravel 
Plug 'noahfrederick/vim-composer'

Plug 'noahfrederick/vim-laravel'

Plug 'tpope/vim-projectionist' 

Plug 'phpactor/phpactor', {'for': 'php', 'tag': '*', 'do': 'composer install --no-dev -o'}

Plug 'blueyed/smarty.vim'

Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

"Autocompletion



call plug#end()


