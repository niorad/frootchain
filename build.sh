
echo " -------------------------"
echo "| Frootchain is building… |"
echo " -------------------------"
echo " "


cd "$( dirname "${BASH_SOURCE[0]}" )"

# ---------------
# HTML
# ---------------
rm ./dist/*.html
echo "Building HTML-Templates, hold on…"
for file in ./src/templates/*.html
do
  ./devtools/froot ./src/templates/$(basename "$file") > ./dist/$(basename "$file")
done
echo "✔ HTML Done"


# ---------------
# JS
# ---------------
echo "Concatenating JS-Files, just a sec…"
rm ./dist/js/*.js
./devtools/froot ./src/js/app.js > ./dist/js/_modules.js
cat ./src/js/libraries/*.js > ./dist/js/_lib.js
cat ./dist/js/_lib.js ./dist/js/_modules.js > ./dist/js/app.js
rm ./dist/js/_lib.js
rm ./dist/js/_modules.js
echo "✔ JS Done"



# ---------------
# SCSS
# ---------------
echo "SASS is being handled. Should be done shortly…"
./devtools/sassc ./src/css/app.scss > ./dist/css/app.css
echo "✔ SASS Done"


# ---------------
# ASSETS
# ---------------
echo "Copying static Assets…"
cp -R ./src/assets/ ./dist/assets/
echo "✔ Assets done"



echo " "
echo "------------------------------"
echo "All done!"
echo "------------------------------"
echo "\n"
