function! splitJoinCommon#getChar()
  return matchstr(getline('.'), '\%' . col('.') . 'c.')
endfunction

" Break a PHP parameter list onto multiple lines
function! splitJoinCommon#splitParameters()
  let oldSearch = @/

  execute "silent normal \"syi(`[i\<return>\<esc>"
  while col('.') !=# col('$') - 1 && col('$') != 1
    if splitJoinCommon#getChar() ==# ","
      execute "normal a\<return>\<esc>"
    elseif splitJoinCommon#getChar() ==# "'"
      execute "silent normal \"syi'`]"
    elseif splitJoinCommon#getChar() ==# '"'
      execute 'silent normal "syi"`]'
    elseif splitJoinCommon#getChar() ==# "(" || splitJoinCommon#getChar() ==# "[" || splitJoinCommon#getChar() ==# "{"
      execute "normal %"
    endif
    execute 'normal l'
  endwhile

  execute 'normal 0'
  silent s/\v([^\)])\)(.?)$/\1\r\)\2/e
  silent normal =a)

  let @/ = oldSearch
endfunction

" Join a PHP parameter list onto one line
function! splitJoinCommon#joinParameters()
  let oldSearch = @/

  execute "silent normal \"sya(\<esc>"
  '[,']join
  silent s/\v\( /(/ge
  silent s/\v \)/)/ge

  let @/ = oldSearch
endfunction

function! splitJoinCommon#traverseBlock(startingCharacter)
  execute "silent normal \"syi" . a:startingCharacter . "`[i\<return>\<esc>"
  while col('.') !=# col('$') - 1 && col('$') != 1
    if splitJoinCommon#getChar() ==# ","
      execute "normal a\<return>\<esc>"
    elseif splitJoinCommon#getChar() ==# "'"
      execute "silent normal \"syi'`]"
    elseif splitJoinCommon#getChar() ==# '"'
      execute 'silent normal "syi"`]'
    elseif splitJoinCommon#getChar() ==# "(" || splitJoinCommon#getChar() ==# "[" || splitJoinCommon#getChar() ==# "{"
      execute "normal %"
    endif
    execute 'normal l'
  endwhile
  execute 'normal 0'
endfunction
