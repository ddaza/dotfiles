```sh
# Clone with minimal history + avoid downloading file contents + enable sparse checkout
git clone --depth=1 --filter=blob:none --sparse <repo-url>

# Enter the repo
cd <repo-folder>

# Initialize sparse checkout (safe even if already enabled)
git sparse-checkout init --cone

# Pull only the file(s) or directory you need into the working tree
git sparse-checkout set path/to/file_or_directory

# (Optional) Add more paths later
git sparse-checkout add another/path

# (Optional) Edit the .git/info/sparse-checkout file to add more
vim .git/info/sparse-checkout

# (Optional) Update to latest commit
git pull origin main
```
