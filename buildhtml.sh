echo "Emptying the dist-folder…"

rm ./dist/*.html

echo "Building HTML-Templates, hold on…"

cd "$( dirname "${BASH_SOURCE[0]}" )"

for file in ./src/templates/*.html
do
  ./devtools/froot ./src/templates/$(basename "$file") > ./dist/$(basename "$file")
done

echo "HTML Done \o/"