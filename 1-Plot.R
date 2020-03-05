# 1-Plot.R

library(ggplot2)
library(dplyr)

storms %>% group_by(time,month) %>% summarise(fakewind=mean(fakewind)) %>%
        ggplot(aes(x=time,y=fakewind,color=month))+
        geom_line()
ggsave("storms.png",width = 7,height = 6)
