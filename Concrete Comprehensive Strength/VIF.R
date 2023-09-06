# install.packages("regclass")
# install.packages("readxl")
# install.packages("mctest")

library("regclass")
library("readxl")
library("mctest")

df=read.csv("Concrete_Comprehensive_Strength\\train.csv")

colnames(df)=c('Cement', ' Blast Furnace Slag', 'Fly Ash', 'Water', 'Superplasticizer','Coarse Aggregate','Fine Aggregate','Age','Concrete compressive strength')

model=lm(df$`Concrete compressive strength` ~. ,data=df)

summary(model)

VIF(model)

eigprop(model,Inter = F)
