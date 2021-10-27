#################################################################
#Prévision des morts du Titanic avec la méthode du Bayesien naif
################################################################

#comparaison des method tree de la class rpart avec le bayesien naif, la fonction
#naiveBayes de la classe library(e1071)
#naiveBayes est simle a implementer lorsque toutes les variables expliquees sont qualitatives ou toutes sont quantitatives, voir:
#http://eric.univ-lyon2.fr/~ricco/tanagra/fichiers/fr_Tanagra_Naive_Bayes_R_Programming.pdf

library(rpart)
library(rpart.plot) #les données ptitanic sont dans le package rpart.plot
data(ptitanic)

setwd("C:\\Users\\Francis\\R_new\\titanic")
#write.csv(ptitanic,file=".\\Data\\titanic.csv")

#blabla

library(e1071)
g <- naiveBayes(survived ~ ., data = ptitanic)
g$apriori
g$tables

pred_bayes<-predict(g, ptitanic)


table(ptitanic$survived, pred_bayes)

#pred_bayes
#         died  survived
#died      690      119
#survived  167      333

#mettre set.seed ici, sinon la colonne exportée changera

write.csv(pred_bayes,file=".\\data\\pred_titanic2_bayes.csv")

#on constate que l arbre de decision est bien meilleur pour prévoir les morts que la méthode de bayes
#93% de bonne prevision (rpart) contre 85% pour bayes
#et legerement moins bonne pour prevoir les vivants (65% rpart et 67% de bonnes prev pour bayes)