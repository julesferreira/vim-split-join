1a
<?php
foo(
	'foo',
	json_encode(['test' => 'val[\'u\']e', 'goo' => ['rik' => 'fds'], 'fds' => 'vxx']),
	'fgh'
);
.
retab!
normal! gg"edG " Save expected text to the e register
1a
<?php
foo(
	'foo',
	json_encode([
		'test' => 'val[\'u\']e',
		'goo' => ['rik' => 'fds'],
		'fds' => 'vxx',
	]),
	'fgh'
);
.
call cursor(4, 16)
call splitJoinPhp#joinArray()
retab!
normal! gg"adG " Save actual text to the a register
