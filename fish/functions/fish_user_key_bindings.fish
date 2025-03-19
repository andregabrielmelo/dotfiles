function fish_user_key_bindings
  # fzf
  bind \cd fzf_change_directory_from_current_one
  bind \cf fzf_change_directory
  bind \cr _fzf_search_history
end

# fzf plugin
fzf_configure_bindings --directory=\co