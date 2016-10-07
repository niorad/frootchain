echo OFF
echo.
echo ----------------------------------------
echo          Frootend is building...
echo ----------------------------------------
echo.
echo ...Cleaning old HTML-Files
echo.

del dist\*.html
echo ...Compiling new HTML-Files

for %%i in (src\templates\*.html) do (
	echo ......frooting %%~ni%%~xi
	devtools\froot.exe %%i > dist\%%~ni%%~xi
)
echo.
echo ----------------------------------------
echo.

echo ...Cleaning old JS-Files
echo.
del dist\js\*.js
echo ...Combining JS-Files
echo.
devtools\froot.exe src\js\app.js > dist\js\modules.js
copy src\js\libraries\*.js dist\js\libraries.js
copy dist\js\libraries.js+dist\js\modules.js dist\js\app.js
del dist\js\modules.js
del dist\js\libraries.js

echo.
echo ----------------------------------------
echo.

echo ...Building SASS-Files
echo.
devtools\sassc.exe src\css\app.scss > dist\css\app.css


echo.
echo ----------------------------------------
echo.

echo ...Copying Assets
echo.
rmdir dist\assets /s /q
md dist\assets
xcopy /s /e /h /y src\assets dist\assets

echo .
echo ----------------------------------------
echo All done!
echo ----------------------------------------

exit /B

