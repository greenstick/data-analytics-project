# Script outputs basic checks between the two data sets

# Data Difference Check
analytics <- readRDS("data/analytics.rdata")
reference <- read.table("data/analytic-table-LACE.txt",sep="\t", header=TRUE)

# Scores without NA values
apply(analytics[,c("L","A","C","E")],MARGIN=2,FUN=sum)
apply(reference[,c("LScore","AScore","CScore","EScore")],MARGIN=2,FUN=sum)

# Scores with NA values
sum(is.na(analytics$C))
sum(is.na(reference$CScore))

sum(analytics$C, na.rm=TRUE)
sum(reference$C, na.rm=TRUE)

sum(is.na(analytics$E))
sum(is.na(reference$EScore))

sum(analytics$C, na.rm=TRUE)
sum(reference$C, na.rm=TRUE)

# Total LACE Score
hist(analytics$LACE_sum)
hist(reference$LACE_sum)