
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
./devtools/froot ./src/js/app.js > ./dist/js/app.js
cat ./src/js/libraries/*.js ./dist/js/app.js > ./dist/js/app.js
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
