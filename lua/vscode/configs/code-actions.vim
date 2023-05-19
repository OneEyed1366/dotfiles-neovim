" function! s:vscodeGoToDefinition(str)
"     if exists('b:vscode_controlled') && b:vscode_controlled
"         call VSCodeNotify('editor.action.' . a:str)
"     else
"         " Allow to function in help files
"         exe "normal! \<C-]>"
"     endif
" endfunction

" gf/gF . Map to go to definition for now
" nnoremap <leader>c, <Cmd>call <SID>vscodeGoToDefinition('revealDeclaration')<CR>
" nnoremap <leader>c. <Cmd>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
" nnoremap <leader>ca <Cmd>call VSCodeNotify('editor.action.peekDeclaration')<CR>
" nnoremap <leader>c/ <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>

" xnoremap K <Cmd>call VSCodeNotify('editor.action.showHover')<CR>
" xnoremap <leader>c, <Cmd>call <SID>vscodeGoToDefinition('revealDeclaration')<CR>
" xnoremap <leader>c. <Cmd>call VSCodeNotify('workbench.action.gotoSymbol')<CR>
" xnoremap <leader>ca <Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>
" xnoremap <leader>c/ <Cmd>call VSCodeNotify('editor.action.referenceSearch.trigger')<CR>


" " <C-w> gf opens definition on the side
" nnoremap <leader>cA <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>

" " open quickfix menu for spelling corrections and refactoring
" nnoremap <leader>c<CR> <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>

" " workaround for calling command picker in visual mode
" xnoremap <leader>cc <Cmd>call VSCodeNotifyVisual('workbench.action.quickOpen', 1)<CR>
" xnoremap <leader><CR> <Cmd>call VSCodeNotifyVisual('workbench.action.showCommands', 1)<CR>
" xnoremap <leader>/ <Cmd>call VSCodeNotifyVisual('workbench.action.findInFiles', 0)<CR>
