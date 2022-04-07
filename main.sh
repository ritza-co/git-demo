git clone https://github.com/ritza-co/git-demo
git add README.md
git commit -m "Added the title of my tutorial with commands that will be featured in the article"
ssh-keygen -t rsa -C "https://github.com/ritza-co/git-demo"
cat ~/.ssh/id_rsa.pub | clip
ssh -T git@github.com
git remote set-url origin git@github.com:username/https://github.com/ritza-co/git-demo
git add README.md
git commit -am "Update README.md"
git push