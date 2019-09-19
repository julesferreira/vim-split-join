function! splitJoinCommon#getChar()
  return matchstr(getline('.'), '\%' . col('.') . 'c.')
endfunction

" Break a PHP parameter list onto multiple lines
function! splitJoinCommon#splitParameters()
  let oldSearch = @/

  call splitJoinCommon#traverseBlock('(')
  silent s/\v\)([^\)]*)$/\r\)\1/e
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
    let l:currentChar = splitJoinCommon#getChar()
    if l:currentChar ==# ","
      execute "normal a\<return>\<esc>"
    elseif l:currentChar ==# '"' || l:currentChar ==# "'" || l:currentChar ==# "(" || l:currentChar ==# "[" || l:currentChar ==# "{"
      execute 'silent normal "syi' . l:currentChar . '`]'
      let l:newCurrentChar = splitJoinCommon#getChar()
      if (l:currentChar ==# '"' || l:currentChar ==# "'") && l:newCurrentChar !=# l:currentChar
        execute 'normal l'
      endif
    endif
    execute 'normal l'
  endwhile
  execute 'normal 0'
endfunction
