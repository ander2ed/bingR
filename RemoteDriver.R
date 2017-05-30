## Script to search Bing for Microsoft Rewards Points ##

library(RSelenium)
RSelenium::checkForServer()
RSelenium::startServer()


for(k in 1:length(emails)) {

	pBin <- list(phantomjs.binary.path = phantomjs.path)
	rd <- remoteDriver(browserName = "phantomjs", extraCapabilities = pBin)
	
	rd$open()
	Sys.sleep(5)
	#Navigate to Sign in page, Sign in using credentials.
	rd$navigate('https://login.live.com')
	# No longer use below element, navigate directly to sign in page.	
	##signInButton <- rd$findElement(using = "id", 'sign-in-link')
	##signInButton$clickElement()
	
	email <- emails[k]
	uid <- rd$findElement(using = "id", 'i0116')
	uid$sendKeysToElement(list(email))
	siNextButton <- rd$findElement(using = 'id', 'idSIButton9')
	siNextButton$clickElement()
	
	Sys.sleep(2)
	
	password <- pws[k]
	pwd <- rd$findElement(using = "id", 'i0118')
	pwd$sendKeysToElement(list(password))
	
	staySignIn <- rd$findElement(using = "id", "idChkBx_PWD_KMSI0Pwd")
	staySignIn$clickElement()
	
	signInButton <- rd$findElement(using = "id", "idSIButton9")
	signInButton$clickElement()
	
	Sys.sleep(1.5)
	
	rd$navigate("https://account.microsoft.com/rewards")
	
	Links <- rd$findElements(using = "xpath", "//a[contains(@href,'/rewardsapp/redirect?url=')]")
	
		
	dailyLinks <- sapply(Links, function(x){x$getElementAttribute('href')})
	
	searchTerms <- length(dailyLinks) + 30
	if(length(dailyLinks) > 0) {
	  for(i in 1:length(dailyLinks)) {
		  currentSearch <- toString(dailyLinks[i])
		  rd$navigate(currentSearch)
		  message('Completed Daily Link ', i, ' for user ', users[k])
		  flush.console()
		}
	} else {
	  message("No daily Links found")
	}
	
	Sys.sleep(1.5)
	
	#After Sign In, navigate to bing search page
	rd$navigate("http://www.bing.com")
	
	#Load vector of search terms, create sample of 30 
	source(search.term.vector)
	sample <- sample(1:length(searchTerms), 30, replace = F)
	itemsToSearch <- searchTerms[sample]
	
	Sys.sleep(1.5)
	
	
	#Add error handling here so it doesn't stop completely if the pause doesn't work.
	#Loop over search terms in list, search for each one, pause 2 seconds, go back to search page, continue.
	for(i in 1:30) {
		searchBar <- rd$findElement(using = "id", 'sb_form_q')
		searchBtn <- rd$findElement(using = "id", 'sb_form_go')
		currentSearch <- c(itemsToSearch[i])
		searchBar$sendKeysToElement(list(""))
		searchBar$sendKeysToElement(list(currentSearch))
		searchBtn$clickElement()
		message('Completed Search Term ', i, ' (', currentSearch, ')', ' for user ', users[k])
		flush.console()
		Sys.sleep(3)
	}
	
	rd$close()
	
}

q(save="no")




