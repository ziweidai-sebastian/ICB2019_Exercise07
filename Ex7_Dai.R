#part 1
#the following input(x) is set by user
x <- read.csv("iris.csv")
x <- as.data.frame(x)
num_row <- seq(1,nrow(x))
#function definition
odd_rows <- function(dat){
  for(i in num_row){
    if (i%%2 == 1) print(x[i,])
  }
}
odd_rows(x)


#part 2
iris_dat <- read.csv("iris.csv")
iris_dat <- as.data.frame(iris_dat)
#number of observations for each species
#function definition
count_species <- function(dat){
  species <- as.data.frame(unique(iris_dat$Species))
  num_of_species <- seq(1,nrow(species))
  species <- as.matrix(species)
  species_occurrance <- length(which(iris_dat$Species == dat))
  cat(dat,"occurs",species_occurrance,"times")
}
count_species("setosa") #this part needs to be specified by user

#find flowers with Sepal.Width greater than certain length given by user
find_SepalWidth <- function(threshold_width){
  Result_flowers <- which(iris_dat$Sepal.Width > threshold_width)
  Result_flowers <- as.data.frame(Result_flowers)
  print("The flowers that have Sepal width greater than the given number are:")
  for(i in seq(1,nrow(Result_flowers))){
    print(iris_dat[Result_flowers[i,],])
  }
}
find_SepalWidth(4) #set by user

#write the data for a given species to a comma-delimited file with the given species name as the file name
create_file <- function(species){
  species_data <- iris_dat[iris_dat$Species == species,]
  write.csv(species_data,file = paste(species,".csv",sep=""))
}
