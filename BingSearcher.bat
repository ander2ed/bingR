:: Change path below to point to your directory, leave the "&" at the end
:: Note - this will kill all other instances of cmd.exe after execution. Be careful running if command prompt windows are open.
R CMD BATCH "C:\path\to\BingScript_EntryPoint.R" &
Taskkill /IM phantomjs.exe
Taskkill /IM cmd.exe
