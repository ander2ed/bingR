# bingR


FOR WINDOWS SETUP
=================
1. Unzip the contents into a new folder on the desktop.
2. Locate the following files:
	- BingScript_EntryPoint.R
	- RemoteDriver.R
	- BingSearcher.bat
	- SearchTermVector.R
3. Move the above files into a single folder of your choosing.
4. Open BingScript_EntryPoint.R and edit the information in that file so it mirrors your current set-up.
5. Open BingSearcher.bat and change the file path to BingScript_EntryPoint.R
6. Create task in Windows Task Scheduler to execute the BingSearcher.bat file


FOR LINUX SETUP
===============
1. Unzip the contents into a new folder on the desktop.
2. Locate the following files:
	- BingScript_EntryPoint.R
	- RemoteDriver.R
	- SearchTermVector.R
3. Move the above files into a single folder of your choosing.
4. Open BingScript_EntryPoint.R and edit the information in that file so it mirrors your current set-up.
7. Create a new Cron job using <b>crontab -e</b> that executes the following:<br>
 Rscript /path/to/your/file/BingScript_EntryPoint.R >> /path/to/your/log/file/BingLog.log 2>&1
  
  
Depends On

1. R (Download at https://cran.r-project.org/)
  - RSelenium (<b>install.packages(RSelenium)</b> from within R)
2. PhantomJS (Download at http://phantomjs.org/download) 
3. Selenium Standalone Server
