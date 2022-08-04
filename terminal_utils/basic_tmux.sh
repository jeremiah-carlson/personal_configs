#!/bin/bash
read -p "Please enter a valid session name: " session_name
sum=0

for x in $(tmux ls | awk '{ print $1 }')
do
        if [ $x = $session_name":" ]
        then
        sum=$(( sum +  1))
        fi
done

if [ $sum -eq 0 ]
then
        tmux new-session -d -s $session_name

        window=0
        tmux rename-window -t $session_name:$window 'Edit'
        tmux send-keys -t $session_name:$window 'cd /home/clifford/_prod' C-m

        window=1
        tmux new-window -t $session_name:$window -n 'Test'
        tmux send-keys -t $session_name:$window 'cd /home/clifford/_prod' C-m

        window=2
        tmux new-window -t $session_name:$window -n 'Git'
        tmux send-keys -t $session:$window 'cd /home/clifford/_prod' C-m

        window=3
        tmux new-window -t $session_name:$window -n 'Admin'
        tmux send-keys -t $session_name:$window 'sudo -i'

        tmux attach-session -t $session_name

else
echo "The session name you have chosen has already been used."
fi
