
echo " -------------------------"
echo "|  Frootend is building.. |"
echo " -------------------------"
echo " "


cd "$( dirname "${BASH_SOURCE[0]}" )"


echo "...Cleaning old Dist-Folder"
rm -rf ./dist

mkdir ./dist
mkdir ./dist/css
mkdir ./dist/js
mkdir ./dist/assets



# ---------------
# HTML
# ---------------
for file in ./src/templates/*.html
do
  ./devtools/froot ./src/templates/$(basename "$file") > ./dist/$(basename "$file")
done
echo "......✔ HTML Done"


# ---------------
# JS
# ---------------
echo "...Compiling JS-Files"
./devtools/froot ./src/js/app.js > ./dist/js/_modules.js
cat ./src/js/libraries/*.js > ./dist/js/_lib.js
cat ./dist/js/_lib.js ./dist/js/_modules.js > ./dist/js/app.js
rm ./dist/js/_lib.js
rm ./dist/js/_modules.js
echo "......✔ JS Done"



# ---------------
# SCSS
# ---------------
echo "...Building SASS-Files to CSS"
./devtools/sassc ./src/css/app.scss > ./dist/css/app.css
echo "......✔ SASS Done"


# ---------------
# ASSETS
# ---------------
echo "...Copying Assets & Favicon"
cp -R ./src/assets/ ./dist/assets/
cp ./src/assets/favicon/favicon.ico ./dist/favicon.ico
echo "......✔ Assets done"



echo " "
echo "------------------------------"
echo "All done!"
echo "------------------------------"
echo "\n"
