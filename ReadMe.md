### MultipleSolutionsTest

This is a test for maintaining sample code in a large repository and copying into smaller targeted sample code repositories. 

MultipleSolutionsTest is a large repository containing .Net Web and Windows solutions and a shared class library project. A script copies the appropriate folders and files into smaller repositories named MultipleSolutionsTest_Web and MultipleSolutionsTest_Windows.

In a cmd window clone the following repos into the same parent folder: <br>
```
cd c:\temp\myrepos
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Windows
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Web
```

The workflow:
1. Use VisualStudio or VSCode to make changes in the local repository for MultipleSolutionsTest. 
2. In Windows Explorer double-click MultipleSolutionsTest\CopyToSmallRepos\copyToSmallRepos.bat to copy your changes to the smaller repos MultipleSolutionsTest_Web and MultipleSolutionsTest_Windows.
3. Test solutions and projects in MultipleSolutionsTest_Web and MultipleSolutionsTest_Windows.
4. Commit and push changes in MultipleSolutionsTest_Web and MultipleSolutionsTest_Windows to Github.
