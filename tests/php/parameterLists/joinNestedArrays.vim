1a
<?php
foo('foo', ['data1' => 'goo', 'nested2' => ['ytr' => 'jhg', 'ytr' => 'tre'], 'data2' => 'oog'], 'foo');
.
retab!
normal! gg"edG " Save expected text to the e register
1a
<?php
foo(
	'foo',
	['data1' => 'goo', 'nested2' => ['ytr' => 'jhg', 'ytr' => 'tre'], 'data2' => 'oog'],
	'foo'
);
.
call cursor(2, 13)
call splitJoinCommon#joinParameters()
retab!
normal! gg"adG " Save actual text to the a register
