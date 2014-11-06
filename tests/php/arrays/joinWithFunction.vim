set filetype=php
1a
<?php
$array = ['foo' => 'b\'ar', 'json' => json_encode(['test' => 'val[\'u\']e', 'goo' => ['rik' => 'fds'], 'fds' => 'vxx']), 'tre' => 'fgh'];
.
retab!
normal! gg"edG " Save expected text to the e register
1a
<?php
$array = [
	'foo' => 'b\'ar',
	'json' => json_encode(['test' => 'val[\'u\']e', 'goo' => ['rik' => 'fds'], 'fds' => 'vxx']),
	'tre' => 'fgh',
];
.
call cursor(2, 10)
call splitJoinPhp#joinArray()
retab!
normal! gg"adG " Save actual text to the a register
