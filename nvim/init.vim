" Directorio de plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/neco-syntax'  " Fuente general de auto completado
Plug 'tpope/vim-surround'
Plug 'Shougo/echodoc.vim'

call plug#end()

" Luego de esta línea puedes agregar tus configuraciones y mappings
"indentLine
" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
" autocompletado

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
"augroup deopleteCompleteDoneAu
 " autocmd!
  "autocmd CompleteDone * silent! pclose!
"augroup END
" definicion funciones
set noshowmode  " No mostrar el modo actual (echodoc hace uso de este espacio)
" Activar echodoc al iniciar Neovim
let g:echodoc_enable_at_startup = 1
"

let g:deoplete#enable_at_startup = 1

" Cerrar automaticamente la ventana de vista previa (donde se muestra documentación, si existe)
augroup deopleteCompleteDoneAu
  autocmd!
  autocmd CompleteDone * silent! pclose!
augroup END

set number

