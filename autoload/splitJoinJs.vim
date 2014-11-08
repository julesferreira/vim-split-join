" Break a JS array onto multiple lines
function! splitJoinJs#splitArray()
  let oldSearch = @/

  call splitJoinCommon#traverseBlock('[')

  silent s/\v([^\)])\](.?)$/\1\r\]\2/e
  silent normal =a]

  let @/ = oldSearch
endfunction

" Join a JS array onto one line
function! splitJoinJs#joinArray()
  let oldSearch = @/

  execute "silent normal \"sya[\<esc>"
  '[,']join
  silent s/\v\[ /[/g
  silent s/\v \]/]/g

  let @/ = oldSearch
endfunction

" Break a JS object onto multiple lines
function! splitJoinJs#splitObject()
  let oldSearch = @/

  call splitJoinCommon#traverseBlock('{')

  silent s/\v([^\)])\}([^\}]*)$/\1\r\}\2/e
  silent normal =a]

  let @/ = oldSearch
endfunction

" Join a JS array onto one line
function! splitJoinJs#joinObject()
  let oldSearch = @/

  execute "silent normal \"sya{\<esc>"
  '[,']join
  s/\v\{ /{/g
  s/\v \}/}/g

  let @/ = oldSearch
endfunction
