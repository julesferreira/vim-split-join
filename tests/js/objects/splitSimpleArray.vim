set filetype=javascript
1a
var arr = {
'foo' : 'bar'
};
.
retab!
normal! gg"edG " Save expected text to the e register
1a
var arr = {'foo' : 'bar'};
.
call cursor(1, 11)
call splitJoinJs#splitObject()
retab!
normal! gg"adG " Save actual text to the a register
