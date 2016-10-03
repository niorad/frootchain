echo "Concatenating JS-Files, just a sec…"

cd "$( dirname "${BASH_SOURCE[0]}" )"

rm ./dist/js/*.js

./devtools/froot ./src/js/app.js > ./dist/app.js

cat ./src/js/libraries/*.js ./src/js/modules/*.js ./dist/app.js > ./dist/js/app.js
