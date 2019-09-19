set filetype=javascript
1a
var arr = {
'foo' : 'bar',
'nested1' : ['data1', 'goo', 'nested2', ['ytr', 'jhg', 'ytr', 'tre'], 'data2', 'oog'],
'bar' : 'foo'
};
.
retab!
normal! gg"edG " Save expected text to the e register
1a
var arr = {'foo' : 'bar', 'nested1' : ['data1', 'goo', 'nested2', ['ytr', 'jhg', 'ytr', 'tre'], 'data2', 'oog'], 'bar' : 'foo'};
.
call cursor(1, 11)
call splitJoinJs#splitObject()
retab!
normal! gg"adG " Save actual text to the a register
