let g:splitJoin_do_mapping = get(g:, 'splitJoin_do_mapping', 1)

if g:splitJoin_do_mapping == 1
  noremap <LocalLeader>s[ :<c-u>call splitJoinPhp#splitArray()<return>
  inoremap <LocalLeader>s[ <esc>:call splitJoinPhp#splitArray()<return>
  noremap <LocalLeader>j[ :<c-u>call splitJoinPhp#joinArray()<return>
  inoremap <LocalLeader>j[ <esc>:call splitJoinPhp#joinArray()<return>
  noremap <LocalLeader>s] :<c-u>call splitJoinPhp#splitArray()<return>
  inoremap <LocalLeader>s] <esc>:call splitJoinPhp#splitArray()<return>
  noremap <LocalLeader>j] :<c-u>call splitJoinPhp#joinArray()<return>
  inoremap <LocalLeader>j] <esc>:call splitJoinPhp#joinArray()<return>

  noremap <LocalLeader>s( :<c-u>call splitJoinCommon#splitParameters()<return>
  inoremap <LocalLeader>s( <esc>:call splitJoinCommon#splitParameters()<return>
  noremap <LocalLeader>j( :<c-u>call splitJoinCommon#joinParameters()<return>
  inoremap <LocalLeader>j( <esc>:call splitJoinCommon#joinParameters()<return>
  noremap <LocalLeader>s) :<c-u>call splitJoinCommon#splitParameters()<return>
  inoremap <LocalLeader>s) <esc>:call splitJoinCommon#splitParameters()<return>
  noremap <LocalLeader>j) :<c-u>call splitJoinCommon#joinParameters()<return>
  inoremap <LocalLeader>j) <esc>:call splitJoinCommon#joinParameters()<return>
endif
