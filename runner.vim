" vim: filetype=vim
let s:passed = 0
let s:failed = 0

let testFiles = split(glob('tests/**/*.vim'))
for testFile in testFiles
  normal! ggdG
  execute 'source ' . testFile
  if @e ==# @a
    let s:passed += 1
  else
    echo testFile . ' Failed'
    let s:failed += 1
  endif

  if @e !=# @a
    registers ae
    echo ''
  endif
endfor
echo 'Passed: ' . s:passed
echo 'Failed: ' . s:failed
q!
