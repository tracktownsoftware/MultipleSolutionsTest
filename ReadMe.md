MultipleSolutionsTest is a large repository with multiple solutions, projects and a shared class library. This is a test to split the large repository into smaller targeted respositories.

In a cmd window clone the following repos into the same parent folder: <br>
```
cd c:\temp\myrepos
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Windows
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Web
```

Use VisualStudio or VSCode make changes in the large MultipleSolutionsTest local repo. 

Run CopyToSmallRepos\copyToSmallRepos.bat to copy changes from local repo MultipleSolutionsTest to the smaller local repos MultipleSolutionsTest_Web and MultipleSolutionsTest_Windows.
