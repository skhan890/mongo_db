library(rmongodb)

setwd("C:/Users/Sars/Documents/MongoDB/Chapter 2")

ns<-"homework_2_1/grades.json"
mongo.is.connected(ns)
ns

mongo<-mongo.create()
mongo.is.connected(mongo)
mongo.get.databases(mongo)

