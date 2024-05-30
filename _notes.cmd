rem notebook to useful command lines

rem /********************activate conda base, as it is not in PATH***********************************/
rem /********************Open Terminal  (Power Shell ) RUN as ADMINSITRATOR ***********************************/
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

rem /******************** open a Anaconda PowerShell Prompt ***********************************/
conda init powershell

rem /******************** re-open a regular PowerShell Prompt ***********************************/
conda info

rem /********************create env indicating wnvironment folder ***********************************/
rem /*********************from root project folder, so it finds evironment.yml **********************************/
conda env create --prefix .\conda-envs\py101-3-12-3-env --file environment.yml 

rem /***********activate the environment ******************/
conda activate .\conda-envs\py101-3-12-3-env


rem /*********** GIT ******************/
rem /*********** setup local git ******************/
(base) PS C:\Users\Joseph_Higaki> git config --global user.name "Joseph Higaki"
(base) PS C:\Users\Joseph_Higaki> git config --global user.email "joseph_higaki@epam.com"

rem /*********** generatre \ work loaptop key  ******************/
ssh-keygen -t ed25519 -C "joseph_higaki work laptop epam.git"

rem /*********** Add an SSH key to your GitLab account in Profile SSH keys  ******************/

rem /*********** Connect to remote GitLab  ******************/
ssh -T git@git.epam.com


rem /*********** git init  ******************/
git init
git add . 
git commit -m 'Initial Commit, project creation'

git remote add origin git@git.epam.com
git remote add origin git@git.epam.com:joseph_higaki/py101.git
git push origin main

rem /*********** some changes  ******************/