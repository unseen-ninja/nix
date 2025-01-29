function mkcd
  mkdir -p $argv && cd $argv
end


function rr
  gum confirm && rm -fr $argv || echo "Not removed"
end
