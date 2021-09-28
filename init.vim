"Neovim configuration

syntax on


set nocompatible
set number
set smartindent
set ruler
set noswapfile
set nobackup
set autoindent
set mouse=a
set laststatus=0
set incsearch
set scrolloff=8
set guicursor=
set encoding=utf-8

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


let g:coc_node_path = trim(system('which node'))


"Importation
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/nerdtree.vim
source $HOME/.config/nvim/telescope.vim


lua << EOF
require'lspconfig'.phpactor.setup{}
require'lspconfig'.psalm.setup{}
require'lspconfig'.intelephense.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.pylsp.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.diagnosticls.setup{}

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}


EOF


"Autocomplete configration
let g:deoplete#enable_at_startup = 1


"Php configuration
let g:phpcd_php_cli_executable = 'php7'

"Jedi got-to configuration
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


"Format configuration
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to space conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

"Python neomake pylinter
let g:neomake_python_enabled_makers = ['pylint']
call neomake#configure#automake('nrwi', 500)

colorscheme gruvbox


"TagsBar config
nmap <F8> :TagbarToggle<CR>

