function! s:getChar()
  return matchstr(getline('.'), '\%' . col('.') . 'c.')
endfunction

" Break a JS array onto multiple lines
function! splitJoinJs#splitArray()
  let oldSearch = @/

  execute "normal yi[`[i\<return>\<esc>"
  while col('.') !=# col('$') - 1
    if s:getChar() ==# ","
      execute "normal a\<return>\<esc>"
    elseif s:getChar() ==# "'"
      execute "normal yi'`]"
    elseif s:getChar() ==# '"'
      execute 'normal yi"`]'
    elseif s:getChar() ==# "(" || s:getChar() ==# "[" || s:getChar() ==# "{"
      execute "normal %"
    endif
    execute 'normal l'
  endwhile

  execute 'normal 0'
  silent s/\v([^\)])\](.?)$/\1\r\]\2/e
  silent normal =a]

  let @/ = oldSearch
endfunction

" Join a JS array onto one line
function! splitJoinJs#joinArray()
  let oldSearch = @/

  execute "normal yi[\<esc>"
  '[,']join
  s/\v\[ /[/g

  let @/ = oldSearch
endfunction

" Break a JS object onto multiple lines
function! splitJoinJs#splitObject()
  let oldSearch = @/

  execute "normal yi{`[i\<return>\<esc>"
  while col('.') !=# col('$') - 1
    if s:getChar() ==# ","
      execute "normal a\<return>\<esc>"
    elseif s:getChar() ==# "'"
      execute "normal yi'`]"
    elseif s:getChar() ==# '"'
      execute 'normal yi"`]'
    elseif s:getChar() ==# "(" || s:getChar() ==# "[" || s:getChar() ==# "{"
      execute "normal %"
    endif
    execute 'normal l'
  endwhile

  execute 'normal 0'
  silent s/\v([^\)])\}(.?)$/\1\r\}\2/e
  silent normal =a]

  let @/ = oldSearch
endfunction
