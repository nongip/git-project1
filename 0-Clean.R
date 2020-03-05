# 0-Clean.R

library(dplyr)
library(lubridate)

storms<-read.csv("storms.csv",header = FALSE)

storms<-storms %>%
        rename(month=V11,state=V8,type=V12,fakewind=V7) %>%
        mutate(time=mdy_hm(storms$V19)) %>%
        select(month,time,state,type,fakewind)
write.csv(storms,file="storms1.csv",row.names=FALSE)
