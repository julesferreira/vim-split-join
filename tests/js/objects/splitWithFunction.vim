set filetype=javascript
1a
var arr = {
'foo' : 'b\'ar',
'json' : JSON.stringify({'test' : 'val[\'u\']e', 'goo' : {'rik' : 'fds'}, 'fds' : 'vxx'}),
'tre' : 'fgh'
};
.
retab!
normal! gg"edG " Save expected text to the e register
1a
var arr = {'foo' : 'b\'ar', 'json' : JSON.stringify({'test' : 'val[\'u\']e', 'goo' : {'rik' : 'fds'}, 'fds' : 'vxx'}), 'tre' : 'fgh'};
.
call cursor(1, 11)
call splitJoinJs#splitObject()
retab!
normal! gg"adG " Save actual text to the a register
