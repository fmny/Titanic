# Titanic-Rpart (arbre décisionnel)

Utilisation de la fonction Rpart sur les passagers du Titanic pour créer un arbre décisionnel afin de prédire la survie des passagers en fonction des autres variables (sexe ,âge, classe tarifaire, nombre de personnes de la même famille à bord et nombre de parent ou d'enfant à bord)



![Arbre titanic optimal](https://github.com/fmny/Titanic/blob/main/Arbre%20titanic.jpeg)


[doc](https://github.com/fmny/Titanic/blob/main/Initiation%20%C3%A0%20rpart.doc)

![Arbre titanic optimal](http://apiacoa.org/blog/2014/02/initiation-a-rpart.fr.html)

[Initiation rpart-FM](https://github.com/fmny/Titanic/blob/main/initiation-rpart.html)


##Construction de l'arbre

Préparation des données

On travaille ici sur les données Titanic disponible dans le package rpart.plot. On charge les deux packages puis les données comme ceci :

library(rpart)

library(rpart.plot)

data(ptitanic)

Les données décrivent 1046 passagers selon 6 variables :

•	pclass donne la classe tarifaire sur le bateau ;

•	survided indique si le passager a survécu ;

•	sex donne le genre du passager ;
•	age donne l'âge du passager exprimé en années ;
•	sibsp donne le nombre de frères, sœurs, mari ou épouse à bord ;
•	parch donne le nombre d'enfants ou de parents à bord.

Les trois dernières variables sont numériques alors que les trois premières sont nominales. Il faut bien s'assurer que la représentation en R des variables respecte leur nature. Pour ce faire, on utilise :
lapply(ptitanic,class)
qui donne la classe de chaque variable, soit ici:
$pclass
[1] "factor"
$survived
[1] "factor"
$sex
[1] "factor"
$age
[1] "labelled"

$sibsp
[1] "labelled"
$parch
[1] "labelled"
Les trois variables nominales sont donc bien des factor. Pour les valeurs numériques, on obtient la classe labelled qui est spécifique au package Hmisc. On peut vérifier en supprimant cette classe que les variables correspondantes sont bien numériques, comme dans le code suivant :
attr(ptitanic$age,"class") <- NULL
class(ptitanic$age)
qui affiche bien
[1] "numeric"
comme attendu.
