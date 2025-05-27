return {
  'airblade/vim-gitgutter',
  event = { 'BufReadPre', 'BufNewFile' },
  config = function()
    -- Customize signs
    vim.cmd([[
      let g:gitgutter_sign_added = '+'
      let g:gitgutter_sign_modified = '~'
      let g:gitgutter_sign_removed = '_'
    ]])

    -- Enable line highlighting
    vim.cmd('let g:gitgutter_highlight_lines = 1')
  end,
}

