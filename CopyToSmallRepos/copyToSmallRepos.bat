@echo off
set mypath=%cd%
cd ..
cd ..
IF exist "MultipleSolutionsTest" goto COPYTOSMALLREPOS
	echo "You need to run this script from the folder MultipleSolutionsTest\CopyToSmallRepos"
	goto END
:COPYTOSMALLREPOS
	echo "Delete files and folders in MultipleSolutionsTest_Web..."
	cd MultipleSolutionsTest_Web
	git clean -d -x -f
	cd ..
	echo "Copy to repo MultipleSolutionsTest_Web..."
	XCOPY MultipleSolutionsTest MultipleSolutionsTest_Web /E /C /I /Y /Exclude:%mypath%\excludedFiles.txt
	XCOPY MultipleSolutionsTest\WebApplication1 MultipleSolutionsTest_Web\Webapplication1 /E /C /I /Y /Exclude:%mypath%\excludedFiles2.txt
	XCOPY MultipleSolutionsTest\WebApplication.sln MultipleSolutionsTest_Web /C /Y
	XCOPY MultipleSolutionsTest\CopyToSmallRepos\ReadMe_Web.md MultipleSolutionsTest_Web\ReadMe.md* /C /Y
	echo "Delete files and folders in MultipleSolutionsTest_Windows..."
	cd MultipleSolutionsTest_Windows
	git clean -d -x -f
	cd ..
	echo "Copy to repo MultipleSolutionsTest_Windows..."
	XCOPY MultipleSolutionsTest MultipleSolutionsTest_Windows /E /C /I /Y /Exclude:%mypath%\excludedFiles.txt
	XCOPY MultipleSolutionsTest\WinFormsApp1 MultipleSolutionsTest_Windows\WinFormsApp1 /E /C /I /Y /Exclude:%mypath%\excludedFiles2.txt
	XCOPY MultipleSolutionsTest\WPFApp1 MultipleSolutionsTest_Windows\WPFApp1 /E /C /I /Y /Exclude:%mypath%\excludedFiles2.txt
	XCOPY MultipleSolutionsTest\WindowsApplications.sln MultipleSolutionsTest_Windows /C /Y
	XCOPY MultipleSolutionsTest\CopyToSmallRepos\ReadMe_Windows.md MultipleSolutionsTest_Windows\ReadMe.md* /C /Y
:END
	echo "finished"
	pause
