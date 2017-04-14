rm(list=ls())
install.packages(c("devtools", "rjson", "bit64", "httr"))

#RESTART R session!

library(devtools)
install_github("twitteR", username="geoffjentry")
library(twitteR)
consumer_key <-'GXdhCx0vWOpSW9n87Yi3rA1eE'
consumer_secret <-'YQto57g4J32w34Z7jU8u0Mk8j18vAw5iSYqC1hNhpAhSrst5CK'
access_token <-'852648121117007872-phZz7tbxFZa8EJvfqhHRi0Db2Fj6sNR'
access_secret <-'rIgWKDIxX6n06yaSaAp5eCHicUftU3SelWvhaHzQxFlTw'

setup_twitter_oauth(consumer_key,consumer_secret,access_token,access_secret)
r_stats <- searchTwitter('#drugs', n=2000,lang="en")
r_stats
search.string <- c('child crime','juvenile delinquents','child abuse india','child porn' )
no.of.tweets <- 2000
tweets <- searchTwitter(search.string, n=no.of.tweets,lang="en")
tweets.text <- sapply(tweets, function(x) x$getText())
tweets.text <- tolower(tweets.text)
tweets.text <- gsub("rt", "", tweets.text)
tweets.text <- gsub("@\\w+", "", tweets.text)
tweets.text <- gsub("[[:punct:]]", "", tweets.text)
tweets.text <- gsub("http\\w+", "", tweets.text)
tweets.text <- gsub("[ |\t]{2,}", "", tweets.text)
tweets.text <- gsub("^ ", "", tweets.text)
tweets.text <- gsub(" $", "", tweets.text)
tweets.text
install.packages("tm")
library("tm")
tweets.text.corpus <- Corpus(VectorSource(tweets.text))
tweets.text.corpus <- tm_map(tweets.text.corpus, function(x)removeWords(x,stopwords()))
tweets.text.corpus
install.packages("wordcloud")
library("wordcloud")
wordcloud(tweets.text.corpus,min.freq = 2, scale=c(7,0.5),colors=brewer.pal(8, "Dark2"),  random.color= TRUE, random.order = FALSE, max.words = 100)
