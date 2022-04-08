

# A guide to using Git from the shell on Replit


In this tutorial, we will be going through how you can use Git from the Shell on Repit. The shell allows us to enter commands whether we want to add new files or remove them, install or test the code in our files. The shell helps us manage our files. 


## Getting started


First, we want to create a new repl by importing a project from GitHub. So when we create the new repl we will select the ```Import from GitHub``` and paste the link of your project from your GitHub and select the ```Import from GitHub```button at the bottom. Replit will then clone your project and create the repl for you. 


### Clone the project linked using the repl shell


Now that we have our repl we want to go ahead and clone the project we linked, using the repl shell by adding a new file called ```main.sh``` that we will use as our shell to enter our commands. 

In the ```main.sh``` file we want to add the follwing command to clone the project. 
```python
git clone https://github.com/ritza-co/git-demo
```
This command makes a clone or copy of the existing repository in a new or another location/directory. The original repository will still be on the local file system.


### Make changes to your README.me, add the readme file and commit the change using the shell


We will go ahead and make changes to our ```README.md``` file. 
```
This is my guide tutorial to using Git from the shell on replit

It will include the following commands:
* git clone
* git branch
* git checkout
* git add remote
* git merge
* git rebase
* git push
* git commit
```
I added the above to my readme.md file. 


Next, we want to add the readme.md file and then commit the changes we made to the file. So we will add the following commands into our shell
```python
git add README.md
git commit -m "Added the title of my tutorial with commands that will be featured in the article"
```
When we commit the file we save the changes we made to our file to the local repository. The ``` -m``` is for the commits message, which is what we would like to have committed in the file. 


## Push README.md file back up to GitHub


For the next step, we might need to use SSH keys so this process might be a little longer than the other steps. 
Before we can ```git push``` the file we need to use the SSH keypairs for Github.

### SSH keypair setup for Github

Now we will generate a SSH key pair in our Shell with the following:
```python
ssh-keygen -t rsa -C "https://github.com/ritza-co/git-demo"
```
or you can just use 
```python
ssh-keygen
```
And you will get the following as a response:

![](img.png)

At this stage, you should click enter and leave this step to default and it will save it to ```/home/runner/.ssh/id_rsa.pub```  and it will then create a directory for you

![](img2.png)

Now we will also just press enter to leave it empty. The passphrase is hidden for security purposes but if you type something there you’ll have to type the same thing every time you use the key. So both times you are asked for a passphrase you would just leave it empty twice and your screen should look like this:
![](img3.png)
Your public key will then be saved.



Next, we can run ```cat``` so we can view the public key that we created. 
```python
cat ~/.ssh/id_rsa.pub
```
After running this command your ssh key will be displayed as follows
![](img4.png)


So now that we have our ssh key we need to add it to our GitHub. In your GitHub profile under your project you will go to your settings and look for the security section, look for the Deploy Key section and follow the numbering by adding the ssh key and giving it a name 
![](img5.png)




```
Next, we want to test the SSH key with the following:
```python
ssh -T git@github.com
```

We need to change the directory into the local clone of our repository and run it:
```python
git remote set-url origin git@github.com:username/https://github.com/ritza-co/git-demo
```
Next, we want to add the following commands to edit the file and commit the changes before we push it back onto GitHub
```python
git add README.md
git commit -am "Update README.md"
```

Lastly, we will go ahead and add the command to push the file back onto GitHub with:
```python
git push
```


We've gone through all the steps so your ```main.sh``` file should look like this: 
```python
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
```

### Things to try:


Now you can try the above steps on your own for some practice and you can use the link below if you want to practice on the same file we used for the above tutorial
https://replit.com/@DanielleMurray/git-demo
