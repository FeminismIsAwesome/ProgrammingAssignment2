library("RUnit")
source("example.R")
source("cachematrix.R")
test.suite <- defineTestSuite("example", 
                              dirs = file.path("tests"),
                              testFileRegexp = '*.R')

test.result <- runTestSuite(test.suite)
printTextProtocol(test.result)