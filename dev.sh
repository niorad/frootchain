echo "Starting Watcher.." #" and Server at port 8000.."
fswatch -o ./src | xargs -n1 ./build.sh # & python -m SimpleHTTPServer

