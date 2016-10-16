

## Install package mboost 
# install.packages("mboost")

## load package mboost
library(mboost)


## load the body fat dataset
# install.packages("TH.data")
data("bodyfat", package = "TH.data")


##########################################################
##########################################################

## linear models with glmboost()

## look at the model using all available covariates 
## (full candidate model)
names(bodyfat)

glm2 <- glmboost(DEXfat ~ age + waistcirc  + hipcirc  + elbowbreadth + kneebreadth + 
                anthro3a + anthro3b + anthro3c + anthro4, 
              family = Gaussian(), data = bodyfat)

## besides DEXfat, use all other variables in bodyfat as covariates
## m <- glmboost(DEXfat ~ ., data = bodyfat)

## get coefficients
coef(glm2, off2int = TRUE)




