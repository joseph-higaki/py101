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

