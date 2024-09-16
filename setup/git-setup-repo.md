<!-- .dotfiles/setup/gitsetup.md -->

git init
git config advice.addEmbeddedRepo false
git add .
git commit -m 'Initial commit'
git branch -M master
git remote add origin https://github.com/tsyroid/dotfiles-master.git
git push -u origin master
