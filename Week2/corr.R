corr <- function(directory, threshold = 0){
        comp_cases <- complete(directory)
        sub_comp <- subset(comp_cases, nobs > threshold)
        id <- sub_comp$id
        file_list <- list.files(directory, full.names = TRUE)
        cor_list = numeric()
        for(i in id){
                fil <- read.csv(file_list[i], header = TRUE)
                fil <- na.omit(fil)
                cor_list <- append(cor_list, cor(x = fil$sulfate, y= fil$nitrate))
        }
        cor_list

}


