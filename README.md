# split-join.vim

Intelligently split arrays, objects, and parameter lists across multiple lines and join them to one line.

## PHP

```php
$arr = ['abc' => 123, 'def' => 456];
```
After pressing `<LocalLeader>sa`
```php
$arr = [
    'abc' => 123,
    'def' => 456,
];
```
After pressing `<LocalLeader>ja`
```php
$arr = ['abc' => 123, 'def' => 456];
```
Note that the trailing comma is inserted on the last element on split and removed on join.

It also handles nested arrays incrementally
```php
$arr = ['abc' => 123, 'qwe' => ['asd' => 'zxc', 'bnm' => 'ert'], 'def' => 456];

$arr = [
    'abc' => 123,
    'qwe' => ['asd' => 'zxc', 'bnm' => 'ert'],
    'def' => 456,
];

$arr = [
    'abc' => 123,
    'qwe' => [
        'asd' => 'zxc',
        'bnm' => 'ert',
    ],
    'def' => 456,
];
```

## Installation

If you have [pathogen.vim](https://github.com/tpope/vim-pathogen) installed, run:

    cd ~/.vim/bundle
    git clone git://github.com/guywithnose/vim-split-join.git
