DBLUE='\033[0;34m'
BLUE='\033[1;34m'
GREEN='\033[1;32m'
NC='\033[0m'

echo " "
echo "${BLUE}Frootend is building..${NC}"
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
echo "...Compiling HTML-Files"
for file in ./src/templates/*.html
do
  ./devtools/froot ./src/templates/$(basename "$file") > ./dist/$(basename "$file")
done
echo "......${GREEN}✔${NC} HTML Done"


# ---------------
# JS
# ---------------
echo "...Compiling JS-Files"
./devtools/froot ./src/js/app.js > ./dist/js/_modules.js
cat ./src/js/libraries/*.js > ./dist/js/_lib.js
cat ./dist/js/_lib.js ./dist/js/_modules.js > ./dist/js/app.js
rm ./dist/js/_lib.js
rm ./dist/js/_modules.js
echo "......${GREEN}✔${NC} JS Done"



# ---------------
# SCSS
# ---------------
echo "...Building SASS-Files to CSS"
./devtools/sassc ./src/css/app.scss > ./dist/css/app.css
echo "......${GREEN}✔${NC} SASS Done"


# ---------------
# ASSETS
# ---------------
echo "...Copying Assets & Favicon"
cp -R ./src/assets/ ./dist/assets/
cp ./src/assets/favicon/favicon.ico ./dist/favicon.ico
echo "......${GREEN}✔${NC} Assets done"



echo " "
echo "${BLUE}All done!${NC}"
echo "\n"

