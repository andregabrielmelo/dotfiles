function _fzf_change_directory
  fzf --ansi --multi --prompt="Search> " --preview="_fzf_preview_file $expanded_token{}"  | perl -pe 's/([ ()])/\\\\$1/g'|read foo
  if [ $foo ]
    builtin cd $foo
    commandline -r ''
    commandline -f repaint
  else
    commandline ''
  end
end 

function fzf_change_directory_from_current_one
  begin
    echo $HOME/.config
    ls --color=always -ad |grep -v \.git
  end | sed -e 's/\/$//' | awk '!a[$0]++' | _fzf_change_directory $argv
end