" Break a PHP array onto multiple lines
function! splitJoinPhp#splitArray()
  let oldSearch = @/

  call splitJoinCommon#traverseBlock('[')

  if search('\v([^,])\](.+)$', '', line('.')) " There isn't already a trailing comma
    silent s/\v([^,])\](.+)$/\1,\r\]\2/e
  else
    silent s/\v,\](.+)$/,\r\]\1/e
  endif
  silent normal =a]

  let @/ = oldSearch
endfunction

" Join a PHP array onto one line
function! splitJoinPhp#joinArray()
  let oldSearch = @/

  execute "silent normal \"sya[\<esc>"
  '[,']join
  silent s/\v\[ /[/g
  silent s/\v, \]/]/g

  let @/ = oldSearch
endfunction
