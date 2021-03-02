let g:splitJoin_do_mapping = get(g:, 'splitJoin_do_mapping', 1)

if g:splitJoin_do_mapping == 1
  noremap <LocalLeader>s[ :<c-u>call splitJoinJs#splitArray()<return>
  inoremap <LocalLeader>s[ <esc>:call splitJoinJs#splitArray()<return>
  noremap <LocalLeader>j[ :<c-u>call splitJoinJs#joinArray()<return>
  inoremap <LocalLeader>j[ <esc>:call splitJoinJs#joinArray()<return>
  noremap <LocalLeader>s] :<c-u>call splitJoinJs#splitArray()<return>
  inoremap <LocalLeader>s] <esc>:call splitJoinJs#splitArray()<return>
  noremap <LocalLeader>j] :<c-u>call splitJoinJs#joinArray()<return>
  inoremap <LocalLeader>j] <esc>:call splitJoinJs#joinArray()<return>

  noremap <LocalLeader>s{ :<c-u>call splitJoinJs#splitObject()<return>
  inoremap <LocalLeader>s{ <esc>:call splitJoinJs#splitObject()<return>
  noremap <LocalLeader>j{ :<c-u>call splitJoinJs#joinObject()<return>
  inoremap <LocalLeader>j{ <esc>:call splitJoinJs#joinObject()<return>
  noremap <LocalLeader>s} :<c-u>call splitJoinJs#splitObject()<return>
  inoremap <LocalLeader>s} <esc>:call splitJoinJs#splitObject()<return>
  noremap <LocalLeader>j} :<c-u>call splitJoinJs#joinObject()<return>
  inoremap <LocalLeader>j} <esc>:call splitJoinJs#joinObject()<return>

  noremap <LocalLeader>s( :<c-u>call splitJoinCommon#splitParameters()<return>
  inoremap <LocalLeader>s( <esc>:call splitJoinCommon#splitParameters()<return>
  noremap <LocalLeader>j( :<c-u>call splitJoinCommon#joinParameters()<return>
  inoremap <LocalLeader>j( <esc>:call splitJoinCommon#joinParameters()<return>
  noremap <LocalLeader>s) :<c-u>call splitJoinCommon#splitParameters()<return>
  inoremap <LocalLeader>s) <esc>:call splitJoinCommon#splitParameters()<return>
  noremap <LocalLeader>j) :<c-u>call splitJoinCommon#joinParameters()<return>
  inoremap <LocalLeader>j) <esc>:call splitJoinCommon#joinParameters()<return>
endif
