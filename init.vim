set rtp+=/path/to/vim-denops/denops.vim
let &rtp ..= ',' .. expand('<sfile>:p:h')
function! s:test(...)
  call denops#plugin#wait('test')
  call denops#request('test', 'request', [])
endfunction
autocmd User DenopsPluginPost:test call denops#notify('test', 'notify', [])
autocmd User test call denops#request('test', 'request', [])
autocmd User DenopsProcessStarted call timer_start(0, function('s:test'))
