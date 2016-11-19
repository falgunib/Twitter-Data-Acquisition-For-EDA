
# Install and Activate Packages
library(twitteR)
library(RCurl)
library(RJSONIO)
library(stringr)

# Declare Twitter API Credentials
api_key <- "rLRzWovMR2lGDrw4gQywpCYi2" # From dev.twitter.com
api_secret <- "XEjkkB2qiOaGeKwDTFcFUaSwSk0ALTk8QNIRKGklbm1Eosk9oR" # From dev.twitter.com
token <- "3589446742-izqpEIKh0FPnIi8JAKnomIAIgAWIneH6lOWxHH4" # From dev.twitter.com
token_secret <- "x1TdnKTm05L4GVJoqRmPL0ZSWbZ8TgQiysiOoYrQENPdQ" # From dev.twitter.com

# Create Twitter Connection
setup_twitter_oauth(api_key, api_secret, token, token_secret)

t <- searchTwitter("Elections OR 'Hillary Clinton OR 'Bernie Sanders'", n=2000, lang="en", since="2016-03-05")

t1.df <- twListToDF(t)
tf <-rbind (tf, t1.df)
colnames(tf)
save(tf,file = "ElectionDataset.RData")
write.csv(tf, file = "saveddf.csv")
