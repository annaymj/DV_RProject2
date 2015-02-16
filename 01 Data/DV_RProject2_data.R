require("dplyr")
require("ggplot2")
require("RCurl")
require("reshape2")
require("tidyr")
require("grid")
require("gplots")


df_cyclotella1 <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from gene"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_my3852', PASS='orcl_my3852', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))

df_cyclotella1 %>% tbl_df

