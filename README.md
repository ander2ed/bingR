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
==========
1. R (Download at https://cran.r-project.org/)
  - RSelenium (<b>install.packages(RSelenium)</b> from within R)
2. PhantomJS (Download at http://phantomjs.org/download) 
3. Selenium Server Standalone (Download at http://www.seleniumhq.org/download/)

UPDATES
=======
There could be two different types of updates to the code.

1. Package update: Anytime the general functionality of the package changes. 
	- For a Package update, refer to the setup instructions above.
2. Script update: Anytime the RemoteDriver.R script changes to handle website changes or feature updates.
	- For a Script update, replace the existing RemoteDriver.R file with the updated version.



UPDATE LOG
==========

<b>Version 1.1.3</b> release<br>
- current, mostly stable release. 
- added fix to RemoteDriver.R for if no daily links were found on the web page via xpath. Previously would crash.  

<b>Version 1.1.2</b> release<br>
- Updates RemoteDriver.R to accomodate changes to login process. Now navigates to login.live.com and ignores accounts.microsoft.com

<b>Version 1.1.1</b> push to GitHub<br>
- All subsequent updates will be tracked on GitHub
	
<b>Version 1.1.1</b> release<br>
- Updates RemoteDriver.R to accomodate changes to login process at accounts.microsoft.com/about	
	
<b>Version 1.1.0</b> release<br>
- Updated package to handle multiple user accounts, centralized user input into BingScript_EntryPoint.R.
	
<b>Version 1.0.0</b> release<br>
- Initial distribution
