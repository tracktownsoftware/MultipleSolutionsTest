MultipleSolutionsTest is a large repository with multiple solutions, projects and a shared class library. This is a test to split the large repository into smaller targted respositories.

Clone the following repos into the same parent folder such as c:\temp\myrepos
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Windows
git clone https://github.com/tracktownsoftware/MultipleSolutionsTest_Web

Using VisualStudio or VSCode make changes in the large MultipleSolutionsTest repo. Run CopyToSmallRepos\copyToSmallRepos.bat to copy the appropriate changes to the smaller local repos MultipleSolutionsTest_Web and MultipleSolutionsTest_Windows.