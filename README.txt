------------
-- README --
------------

FOR WINDOWS SETUP
=================
1. Unzip the contents into a new folder on the desktop.
2. Locate the following files:
	- BingScript_EntryPoint.R
	- RemoteDriver.R
	- BingSearcher.FooBar
	- SearchTermVector.R
3. Change the file extension of BingSearcher.FooBar from .FooBar to .bat so it is recognized as an executable batch file
4. Move the above files into a single folder of your choosing.
5. Open BingScript_EntryPoint.R and edit the information in that file so it mirrors your current set-up.
6. Open BingSearcher.bat and change the file path to BingScript_EntryPoint.R
7. Create task in Windows Task Scheduler to execute the BingSearcher.bat file


FOR LINUX SETUP
===============
1. Unzip the contents into a new folder on the desktop.
2. Locate the following files:
	- BingScript_EntryPoint.R
	- RemoteDriver.R
	- SearchTermVector.R
3. Move the above files into a single folder of your choosing.
4. Open BingScript_EntryPoint.R and edit the information in that file so it mirrors your current set-up.
7. Create a new Cron job using "crontab -e" that executes the following:
	
	Rscript /path/to/your/file/BingScript_EntryPoint.R >> /path/to/your/log/file/BingLog.log 2>&1


UPDATES
=======
There could be two different types of updates to the package.
1. Package update: Anytime the general functionality of the package changes. 
	- For a Package update, refer to the setup instructions above.
2. Script update: Anytime the RemoteDriver.R script changes to handle website changes or feature updates.
	- For a Script update, replace the existing RemoteDriver.R file with the updated version.



UPDATE LOG
==========
Version 1.1.1 release
	- Current, stable release. 
	- Updates to RemoteDriver.R to accomodate changes to login process at accounts.microsoft.com/about 
Version 1.1.0 release
	- Updated package to handle multiple user accounts, centralized user input into BingScript_EntryPoint.R.
Version 1.0.0 release
	- Initial distribution

