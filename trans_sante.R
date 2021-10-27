
setwd("C:\\Users\\Francis\\R_new\\transparence santé")
#write.csv(ptitanic,file=".\\Data\\trans.csv")

#trans<-read.csv(file ="C:\\Users\\Francis\\R_new\\transparence santé\\declaration_convention_2021_10_26_04_00.csv",sep=';')

#trans2<-trans[1:1000,]
#l'importation fonctionne avec un fichier CSV de 2GO et 6M de lignes

#trans<-read.csv(file ="C:\\Users\\Francis\\R_new\\transparence santé\\declaration_avantage_2021_10_26_04_00.csv",sep=';')
#trans2<-trans[1:1000,]
#Erreur : impossible d'allouer un vecteur de taille 62.5 Mo
#probleme ici avec une base de 3.7GO et 2M de lignes



#lien utile pour les gros volumes sous R
#https://rstudio-pubs-static.s3.amazonaws.com/69263_4896ac57fc3b4650ad71338d8a249e2a.html

#trans<-read.csv(file ="C:\\Users\\Francis\\R_new\\transparence santé\\declaration_avantage_2021_10_26_04_00.csv",nrow=6.1e6,stringsAsFactors=FALSE,sep=';')
#trans2<-trans[1:1000,]
#ici import d'une base possédant 6.1e6 enregistrement qui fonctionne
#j'ignore ce qu'a fait R étant donné que la base n'a que 2M enregistrement
#il faut connaître le nombre de lignes exact!



#Le package data.table est un package developpé par Matthew Dowle, 
#un ancien de Lheman Brothers. C’est un package qui permet d’importer 
#des données assez volumineuses avec la fonction fread et leur manipulation 
#comme tout autre data.frames. L’importation des bases volumineuses avec 
#ce package est très rapide (par exemple 20Go, soit à peu près 200 millions 
#d’individus, en 8mn alors qu’avec R ou d’autres logiciels, ça prendrait des heures)


library(data.table)
data<-fread("declaration_avantage_2021_10_26_04_00.csv",stringsAsFactors=TRUE)
#Erreur : impossible d'allouer un vecteur de taille 135.9 Mo



