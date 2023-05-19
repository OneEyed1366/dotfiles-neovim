function! s:splitDown() abort
  call VSCodeNotify('workbench.action.splitEditorDown')
  call VSCodeNotify('workbench.action.navigateDown')
endfunction

function! s:splitRight() abort
  call VSCodeNotify('workbench.action.splitEditorRight')
  call VSCodeNotify('workbench.action.navigateRight')
endfunction
" Bind format to vscode format selection
xnoremap <expr> = <SID>vscodeFormat()
nnoremap <expr> = <SID>vscodeFormat()
nnoremap <expr> == <SID>vscodeFormat() . '_'

xnoremap <leader>y <CMD>call VSCodeNotify('workbench.action.terminal.copySelection')

xnoremap <expr> <Plug>VSCodeCommentary <SID>vscodeCommentary()
nnoremap <expr> <Plug>VSCodeCommentary <SID>vscodeCommentary()
nnoremap <expr> <Plug>VSCodeCommentaryLine <SID>vscodeCommentary() . '_'
" Bind C-/ to vscode commentary since calling from vscode produces double comments due to multiple cursors
xnoremap <expr> gcc <SID>vscodeCommentary()
nnoremap <expr> gcc <SID>vscodeCommentary() . '_'

nnoremap <leader>, <CMD>call VSCodeNotify('workbench.action.showEditorsInActiveGroup')<CR>
nnoremap <leader><CR> <CMD>call VSCodeNotify('workbench.action.showCommands')<CR>

nnoremap <leader>. <CMD>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>
nnoremap <leader>ff <CMD>call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <leader>/ <CMD>call VSCodeNotify('workbench.action.findInFiles')<CR>

nnoremap <leader><ESC><leader> <CMD>noh<CR>
nnoremap <leader>§<leader> <CMD>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>

nnoremap <leader>wl <CMD>call VSCodeNotify('workbench.action.navigateRight')<CR>
nnoremap <leader>wk <CMD>call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <leader>wj <CMD>call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <leader>wh <CMD>call VSCodeNotify('workbench.action.navigateLeft')<CR>

nnoremap <leader>w\ splitRight()
nnoremap <leader>w- splitDown()

nnoremap K <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
nnoremap <Enter> <CMD>call VSCodeNotify('editor.action.quickFix')<CR>
nnoremap <leader>c. <CMD>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
nnoremap <leader>c, <CMD>call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap <leader>cr <CMD>call VSCodeNotify('editor.action.rename')<CR>
nnoremap <leader>ca <CMD>call VSCodeNotify('editor.action.revealDefinition')<CR>
nnoremap <leader>ce <CMD>call VSCodeNotify('workbench.actions.view.problems')<CR>

nnoremap <leader>g. <CMD>call VSCodeNotify('git.openChange')<CR>
nnoremap <leader>g, <CMD>call VSCodeNotify('git.viewFileHistory')<CR>
nnoremap <leader>gc <CMD>call VSCodeNotify('gitlens.views.commits.focus')<CR>
nnoremap <leader>gb <CMD>call VSCodeNotify('gitlens.views.branches.focus')<CR>

nnoremap [[ <CMD>call VSCodeNotify('editor.action.marker.prev')<CR>
nnoremap ]] <CMD>call VSCodeNotify('editor.action.marker.next')<CR>

nnoremap [g <CMD>call VSCodeNotify('workbench.action.editor.previousChange')<CR>
nnoremap ]g <CMD>call VSCodeNotify('workbench.action.editor.nextChange')<CR>

nnoremap <leader>m <CMD>call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <leader>M <CMD>call VSCodeNotify('workbench.action.files.saveAll')<CR>

nnoremap <leader>bd <CMD>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <leader>bD <CMD>call VSCodeNotify('workbench.action.closeAllEditors')<CR>
