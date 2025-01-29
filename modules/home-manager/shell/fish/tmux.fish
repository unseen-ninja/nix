alias tm tmux


function tma
  set SESSION $(tmux list-sessions -F \#S | gum filter --placeholder "Pick session...")
  tmux switch-client -t $SESSION || tmux attach -t $SESSION
end


function tmn
  set SESSION $(gum input --placeholder "Session name")
  tmux new -s $SESSION
end


function tmk
  set SESSION $(tmux list-sessions -F \#S | gum filter --placeholder "Pick session...")
  tmux kill-session -t $SESSION
end
