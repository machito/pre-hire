# Setting up RVM

1. Go to  [[http://rvm.beginrescueend.com]] to check out the command you are going to type in your terninal
` \curl -L https://get.rvm.io | bash -s stable --ruby`
2. Copy step 1  into bash profile
3. Type this command in the Terminal, and it will automatically append the RVM function to an existing bash_profile:
 ` echo "[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function" >>  ~/.bash_profile`
4. To checkout the the version of RMV, type this in you terminal:
  `rvm -v`
5. To work with a specific version of ruby, pass the version in:
`rvm install  1.9.2     `
"1.9.2" is a example of a ruby version, it could be any version
6. Now check your current ruby version:
ruby -v
7. If you would like to switch ruby versions, type:
`rvm use 1.9.1  `
"1.9.2" is a example of a ruby version, it could be any version
8. If you want to use the current ruby version of your system, type:
`rvm system  `
9. Create a file   `.rvmrc`      in the root of the project, and inside your file, type:
`rvm ree@ree_project `         
"ree_project"   could be anything

  - If you want to use `jruby`  type: `rvm jruby@jruby_project` "jruby_project" could be anything
  
10. Go to your project's folder:
`cd ree_project/`
  - Press `enter`, and type `yes`
11.  Copy and paste the install command you see in the terminal
12.  Copy and paste the "ERROR: Gemset" command you see in the terminal

