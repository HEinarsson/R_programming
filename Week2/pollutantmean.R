pollutantmean <- function(directory, pollutant, id = 1:332){
        file_list <- list.files(directory, full.names = TRUE)
        dat <- data.frame()
        for(i in id){
               dat <- rbind(dat, read.csv(file_list[i]))
        }
        dat_sub <- dat[, pollutant]
        mean_value <- mean(dat_sub, na.rm  = TRUE)
        mean_value
        
}
