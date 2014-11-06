set filetype=php
1a
<?php
foo(
	['data1' => self::_getData($stuff), 'info' => 'goo']
);
.
retab!
normal! gg"edG " Save expected text to the e register
1a
<?php
foo(['data1' => self::_getData($stuff), 'info' => 'goo']);
.
call cursor(2, 5)
call splitJoinCommon#splitParameters()
retab!
normal! gg"adG " Save actual text to the a register
