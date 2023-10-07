library(jsonlite)
data <- fromJSON("/Users/hexua/530lab/lab4/provdata.json")
realdata<-data$data
maxpop <- 0
province <- ""
pop<- 0
for (i in 1:ncol(realdata)) {
  if (i%%2==0){
    pop=as.numeric(realdata[[i]][i/2])
    if (pop > maxpop){
      maxpop=pop
      province=colnames(realdata)[i-1]
    }
  }
}
cat("The province with the largest population is", province, "with the population of", maxpop)