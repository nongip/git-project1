# 0-Clean.R

library(dplyr)
library(lubridate)

storms<-read.csv("storms.csv",header = TRUE)


storms<-storms %>%
        mutate(time=ymd_h(paste(year,month,day,hour))) %>%
        select(name,year,time,lat,long,pressure,wind,status,category)

write.csv(storms,file="storms1.csv",row.names=FALSE)
