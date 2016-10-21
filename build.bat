echo OFF
echo.
echo ----------------------------------------
echo          Frootend is building...
echo ----------------------------------------
echo.

rmdir dist /s /q
md dist
md dist\js
md dist\css
md dist\assets

echo ...Compiling new HTML-Files

for %%i in (src\templates\*.html) do (
	echo ......frooting %%~ni%%~xi
	devtools\froot.exe %%i > dist\%%~ni%%~xi
)
echo.
echo ----------------------------------------
echo.

echo ...Combining JS-Files
echo.
devtools\froot.exe src\js\app.js > dist\js\_modules.js
type src\js\libraries\*.js > dist\js\_lib.js

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
xcopy /s /e /h /y src\assets dist\assets

echo .
echo ----------------------------------------
echo All done!
echo ----------------------------------------

exit /B

