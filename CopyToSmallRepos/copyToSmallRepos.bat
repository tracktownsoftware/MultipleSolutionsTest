@echo off
set mypath=%cd%
cd ..
cd ..
IF exist "MultipleSolutionsTest" goto COPYTOSMALLREPOS
	echo "You need to run this script from the folder MultipleSolutionsTest\Scripts"
	goto END
:COPYTOSMALLREPOS
	echo "Copying to repo MultipleSolutionsTest_Web..."
	XCOPY MultipleSolutionsTest MultipleSolutionsTest_Web /E /C /I /Y /Exclude:%mypath%\excludedFiles.txt
	XCOPY MultipleSolutionsTest\WebApplication1 MultipleSolutionsTest_Web\Webapplication1 /E /C /I /Y
	XCOPY MultipleSolutionsTest\WebApplication.sln MultipleSolutionsTest_Web /C /Y
	echo "Copying to repo MultipleSolutionsTest_Windows..."
	XCOPY MultipleSolutionsTest MultipleSolutionsTest_Windows /E /C /I /Y /Exclude:%mypath%\excludedFiles.txt
	XCOPY MultipleSolutionsTest\WinFormsApp1 MultipleSolutionsTest_Windows\WinFormsApp1 /E /C /I /Y
	XCOPY MultipleSolutionsTest\WPFApp1 MultipleSolutionsTest_Windows\WPFApp1 /E /C /I /Y
	XCOPY MultipleSolutionsTest\WindowsApplications.sln MultipleSolutionsTest_Windows /C /Y
:END
	echo "finished"
	pause