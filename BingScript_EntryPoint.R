###########################################################################
## Utility script used to set variables needed in the main search script ##
## Change the values below to match your current configuration           ##
## Do not modify the variable names, only the values assigned to them    ##
###########################################################################

## Dependencies ##
# R (download at https://cran.r-project.org/)
# phantomjs (download at phantomjs.org)
# RSelenium (download using: install.packages('RSelenium') from within R)
# Search Term Vector stored at C:\BingSearcher\searchTermVector.R or similar (if change location, must change below when it is called)


######################## BEGIN ########################
rm(list = ls())





########## Modify Below
# Set user account info and directory variables here:
users <- c("User 1", "User 2")
emails <- c("Email_For_User1@outlook.com", "Email_For_User2@Outlook.com")
pws <- c("PaSsWoRd_For_User_1", "PaSsWoRd_For_User_2")

phantomjs.path <- "C:/Program Files/Phantomjs/phantomjs-2.1.1-windows/bin/phantomjs.exe"
search.term.vector <- "C:/Path/To/SearchTermVector.R"
search.script <- "C:/Path/To/RemoteDriver.R"
########## End Modifications





# Call main script to start searches if users, emails and pws all have same number of elements
if(length(users) == length(emails) & length(emails) == length(pws)) {
	source(search.script)
}
else{ #exit
	message("at least one of \"users\", \"emails\" or \"pws\" does not have the same number of elements as the others")
	q(save='no')
}

######################### END #########################
