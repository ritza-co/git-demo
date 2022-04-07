git clone https://github.com/ritza-co/git-demo
git add README.md
git commit -m "Added the title of my tutorial with commands that will be featured in the article"
ssh-keygen -t rsa -b 4096 -C "danielle@ritza.co"
cat ~/.ssh/id_rsa.pub 
ssh -T git@github.com
git remote set-url origin git@github.com:username/https://github.com/ritza-co/git-demo
git add README.md
git commit -am "Update README.md"
git push

