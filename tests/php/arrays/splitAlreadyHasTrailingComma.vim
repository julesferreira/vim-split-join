set filetype=php
1a
<?php
$array = [
	'foo' => 'bar',
];
.
retab!
normal! gg"edG " Save expected text to the e register
1a
<?php
$array = ['foo' => 'bar',];
.
call cursor(2, 11)
call splitJoinPhp#splitArray()
retab!
normal! gg"adG " Save actual text to the a register
