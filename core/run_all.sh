SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

tmux new -s ASPNET -d
tmux split-window -h -t ASPNET

tmux send-keys -t ASPNET:0.0 "cd $SCRIPTPATH" C-m
tmux send-keys -t ASPNET:0.0 'cd ../aspnet_core_mvc' C-m
tmux send-keys -t ASPNET:0.0 'dotnet build' C-m
tmux send-keys -t ASPNET:0.0 'dotnet run' C-m
sleep 1

tmux send-keys -t ASPNET:0.1 "cd $SCRIPTPATH" C-m
tmux send-keys -t ASPNET:0.1 'cd ../aspnet_core_webapi' C-m
tmux send-keys -t ASPNET:0.1 'dotnet build' C-m
tmux send-keys -t ASPNET:0.1 'dotnet run' C-m
sleep 1

tmux attach -t ASPNET
