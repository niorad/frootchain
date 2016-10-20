echo " "
echo "Starting Watcher.." #" and Server at port 8000.."
echo " "
echo "Initial Build…"
./build.sh
fswatch -o ./src | xargs -n1 ./build.sh # & python -m SimpleHTTPServer

