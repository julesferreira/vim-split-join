set filetype=php
1a
<?php
$array = [
	'foo' => 'bar',
	'nested1' => ['data1' => 'goo', 'nested2' => ['ytr' => 'jhg', 'ytr' => 'tre'], 'data2' => 'oog'],
];
.
retab!
normal! gg"edG " Save expected text to the e register
1a
<?php
$array = ['foo' => 'bar', 'nested1' => ['data1' => 'goo', 'nested2' => ['ytr' => 'jhg', 'ytr' => 'tre'], 'data2' => 'oog']];
.
call cursor(2, 11)
call splitJoinPhp#splitArray()
retab!
normal! gg"adG " Save actual text to the a register
