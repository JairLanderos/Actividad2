echo "This script is an example to create and apply a patch"
git clone https://github.com/mtoyoda/sl.git
echo "sl repository has been cloned successfully!"
cd sl/
echo "This text is added for a patch" >> README.md
echo "README.md has been modified. A patch will be created"
git diff > changes.patch
echo "Patch has been created successfully"
git restore .
git apply changes.patch
echo "Patch applied successfully!"
git diff
echo "Renaming README.md to README_FJLF.md..."
mv README.md README_FJLF.md
echo "Editing existing patch..."
git diff > changes.patch
git restore .
git apply changes.patch
echo "Patch applied successfully!"
git diff 
git add README_FJLF.md
