"-----------supertab------------
" let g:SuperTabDefaultCompletionType = 'context'
" let g:SuperTabCrMapping = 1
" let g:SuperTabLongestEnhanced = 1
" let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
" let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']
" let g:SuperTabContextDiscoverDiscovery =  ["&completefunc:<c-x><c-u>", '&omnifunc:<c-x><c-o>']

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']

autocmd FileType *
      \if &omnifunc != '' |
      \call SuperTabChain(&omnifunc, "<c-p>", 1) |
"      \call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
      \endif
