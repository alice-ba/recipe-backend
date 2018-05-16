#Category
insert into category values (1,'Sans gluten');
insert into category values (2,'Végétarien');

#Ingredient
insert into ingredient values (1,'melon');
insert into ingredient values (2,'citron');
insert into ingredient select count(*) +1  , 'sucre' from ingredient;
insert into ingredient select count(*) +1  , 'eau' from ingredient;
insert into ingredient select count(*) +1  , 'salades composée' from ingredient;
insert into ingredient select count(*) +1  , 'saumon fumé' from ingredient;
insert into ingredient select count(*) +1  , 'crevette cuite' from ingredient;
insert into ingredient select count(*) +1  , 'pomme de terre' from ingredient;
insert into ingredient select count(*) +1  , 'tranche de coppa' from ingredient;
insert into ingredient select count(*) +1  , 'vinaigrette' from ingredient;
insert into ingredient select count(*) +1  , 'fromages à raclette ' from ingredient;

#UnitOfMeasure
insert into unit_of_measure select count(*) +1  , '' from unit_of_measure;
insert into unit_of_measure select count(*) +1  , 'g' from unit_of_measure;
insert into unit_of_measure select count(*) +1  , 'kg' from unit_of_measure;
insert into unit_of_measure select count(*) +1  , 'cL' from unit_of_measure;

#Course
insert into course select count(*) +1  , 'Appetizer' from course;
insert into course select count(*) +1  , 'Starter' from course;
insert into course select count(*) +1  , 'Main course' from course;
insert into course select count(*) +1  , 'Desert' from course;
insert into course select count(*) +1  , 'Drink' from course;
insert into course select count(*) +1  , 'Sweet' from course;

#recipe
insert into recipe select count(*)+1, 600,'','Raclette d''été',900, 'FIVE',4,'http://www.marmiton.org/recettes/recette_raclette-d-ete_62325.aspx',3 from recipe;
insert into recipe select count(*)+1, 3600,'','Confiture de melon d''été',1200, 'THREE',6,'http://www.marmiton.org/recettes/recette_confiture-de-melon-d-ete_20657.aspx',6 from recipe;

#recipe_category
insert into recipe_category values (1,1);
insert into recipe_category values (2,1);
insert into recipe_category values (2,2);

#Element - raclette
insert into element select count(*)+1,250,5,1,2 from element;
insert into element select count(*)+1,200,6,1,2 from element;
insert into element select count(*)+1,1,1,1,1 from element;
insert into element select count(*)+1,200,7,1,2 from element;
insert into element select count(*)+1,10,8,1,1 from element;
insert into element select count(*)+1,8,9,1,1 from element;
insert into element select count(*)+1,1,10,1,1 from element;
insert into element select count(*)+1,500,11,1,2 from element;
#Element - confiture
insert into element select count(*)+1,1.5number,1,2,3 from element;
insert into element select count(*)+1,2,2,2,1 from element;
insert into element select count(*)+1,1,3,2,3 from element;
insert into element select count(*)+1,15,4,2,4 from element;

#Steps-raclette
insert into step select count(*)+1,'Cuire les pommes de terre, couper le melon en dés et le saumon en bandes.',1,1 from step;
insert into step select count(*)+1,'Présenter le tout dans une assiette en mettant au centre la pomme de terre, autour la salade et à chaque coin de l''assiette mettre un peu de saumon, melon, coppa et crevettes, sans mélanger les ingrédients ensemble.',2,1 from step;
insert into step select count(*)+1,'Mettre de la vinaigrette juste sur la salade.',3,1 from step;
insert into step select count(*)+1,'Reste plus qu''à mettre l''appareil à raclette au centre de la table.',4,1 from step;
#steps-confiture
insert into step select count(*)+1,'Verser l’eau et le sucre dans une bassine à confiture, puis porter le mélange à ébullition jusqu’à la formation d’un sirop.',1,2 from step;
insert into step select count(*)+1,'Détailler ensuite la chair du melon en dés, puis presser le jus des citrons et incorporer le tout dans la bassine.',2,2 from step;
insert into step select count(*)+1,'Saupoudrer d’une pincée de noix de muscade.',3,2 from step;
insert into step select count(*)+1,'Laisser cuire sur feu très doux pendant 1 h en remuant de temps en temps.',4,2 from step;
insert into step select count(*)+1,'Arroser de 2 cuillères à soupe de rhum en fin de cuisson.',5,2 from step;
insert into step select count(*)+1,'Ecumer et verser dans les pots, puis laisser refroidir avant de les refermer.',6,2 from step;
