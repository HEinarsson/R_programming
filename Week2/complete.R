complete <- function(directory, id = 1:332){
        file_list <- list.files(directory, full.names = TRUE)
        cc <- c()
        for(i in id){
                file <- read.csv(file_list[i])
                cc <- append(cc,(sum(complete.cases(file[,c(2,3)]))))
        }
        nobs <- na.omit(cc)
        dat <- na.omit(data.frame(id,nobs))
        dat
}
