MultipleSolutionsTest is a large repository with multiple solutions, projects and a shared class library. This is a test to split the large repository into smaller targted respositories.

In a cmd window clone the following repos into the same parent folder <br>
cd c:\temp\myrepos <br>
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest <br>
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Windows <br>
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Web <br>

Using VisualStudio or VSCode make changes in the large MultipleSolutionsTest repo. Run CopyToSmallRepos\copyToSmallRepos.bat to copy the appropriate changes to the smaller local repos MultipleSolutionsTest_Web and MultipleSolutionsTest_Windows.
