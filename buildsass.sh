echo "Sassy CSS is being handled. Should be done shortly!"

cd "$( dirname "${BASH_SOURCE[0]}" )"
./devtools/sassc ./src/css/app.scss > ./dist/css/app.css