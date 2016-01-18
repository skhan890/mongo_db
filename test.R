# library(mongolite)
# m<-mongo(collection="students")
# m

install.packages("mongolite")

library(rmongodb)

setwd("C:/Users/Sars/Documents/Spring 2016/MongoDB/Chapter 2")

ns<- "homework_2_1/grades.json"
# mongo.is.connected(ns)
# ns

mongo<-mongo.create()
mongo.is.connected(mongo)
mongo.get.databases(mongo)



if(mongo.is.connected(mongo) == TRUE) {
  db <- "students"
  mongo.get.database.collections(mongo, db)
}
coll <- "students.grades"

coll2<-"test.names"

if(mongo.is.connected(mongo) == TRUE) {
  help("mongo.count")
  mongo.count(mongo, coll)
}

#800 documents in students.grades

# 
# buf <- mongo.bson.buffer.create()
# mongo.bson.buffer.append(buf, "name", "Jeff")
# criteria <- mongo.bson.from.buffer(buf)
# class(criteria)




#   
# mongo.remove(mongo, "students.grades", list(typw="homework"))
# 
# mongo.find.all(mongo, coll,
#            query='{"pop":{"$gte":80000}}')


# class(only_hw)
# 
# lis<-only_hw
# 
# lis <- vector("list", 3)
# 
# lis[[2]] <- NULL


  mongo.find.one(mongo, coll)
  
  res <- mongo.distinct(mongo, coll, "student_id")
 students<- mongo.find.all(mongo,coll)
 
cursor<- mongo.find(mongo,coll,
                          query='{"type":"homework"}',
                    sort='{"student_id":1, "score":1}'
                    
 )
 
only_hws<-mongo.cursor.to.list(cursor)

#######################################

# good code
# 


myList<-only_hws



head(only_hws, 4)
# 
index<-((seq(0, 400, 2)))

myList <- myList[-index] 
# head(myList,2)
length(myList)

head(myList)
bad_ids<-myList

####

ns<-"students.grades"
x <- mongo.find.all(mongo,ns)
length(x)




for(i in 1:length(bad_ids)){
    rm.id <- mongo.bson.from.list(bad_ids[[i]]["_id"]) #grab _id of bad document and turn to bson
    mongo.remove(mongo,ns,rm.id)  #remove it.
}

x <- mongo.find.all(mongo,ns)
length(x)

################################################################
####################################################

only_hw<- mongo.find.all(mongo,coll,
                         query='{"type":"homework"}'
)



class(students)




-------------------
# test_remove<-remove[seq(1,length(only_hws),2)]
#  
# seq(1, 400, 2)
# 
# myList<-only_hws
# 
# head(myList,2)
# 
# 
# 
# 
# myList[[1,2]] <- NULL 
# 
# 
# # myList[[1]]
# 
# # lapply(myList,
# #        )
# 
# # lapply(myList, 
# #        
# isNameInIndex <- names(myList) %in% index
# myList[!isNameInIndex]
# 
# 
# suu <- list(NULL, NULL, 1:2, matrix(1:4, 2))
# suu[!sapply(suu, is.null)]
# 
# new<-as.data.frame(unlist(myList)) 
# 
# as.list(new)
# 
# class(new)
# myList[which(names(myList) %in% (seq(1, 400, 2)))] <- NULL
# # 
# 
# my_list <- unlist(myList)
#  
# myList<-my_list
# my_list <- my_list[-2]

#  ------------------------------------------------------------------------


 mongo.remove(mongo, "students.grades", only_hw_bson)
 
 
only_hw<- mongo.find.all(mongo,coll,
                         query='{"type":"homework"}'
                           )
 


 class(students)
 
 
################# 
 
 class(coll)
  head(res, 2)

  class(res)
  
  # cityone <- mongo.find.one(mongo, coll, '{"city":"COLORADO CITY"}')
  print( cityone )
  mongo.bson.to.list(cityone)
  
  