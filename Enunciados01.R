## ENUNCIADO TAREA 1

# PROBLEMA 1

# Sea la tabla de decisión con 5 estados de la naturaleza y 4 alternativas de la siguiente 
# forma:

X1 = matrix(c(5,4,6,2,3,1,7,8,7,5,2,0,8,9,5,4,3,-1,9,10),nrow=4,ncol=5,byrow=TRUE)
colnames(X1)=c('e1','e2','e3','e4','e5')
rownames(X1)=c('d1','d2','d3','d4')
X1

# Resolverla tanto para situación favorable como desfavorable, con cada uno de los 
# criterios por separado



# PROBLEMA 2

# Un chef está experimentando con diferentes ingredientes y métodos de cocción para preparar 
# un nuevo plato. Tiene cuatro posibles ingredientes principales: pollo (d1), pescado (d2), 
# champiñones (d3) y ternera (d4). Además, tiene cuatro métodos de cocción: asado (e1), frito (e2), 
# al vapor (e3) y a la parrilla (e4). Dependiendo de la combinación de ingrediente y método de 
# cocción, el tiempo total de preparación (en minutos) varía según la siguiente tabla:

X2 = matrix(c(45,30,25,50,35,20,30,40,25,15,20,35,50,40,30,60), nrow=4, ncol=4, byrow=TRUE)
colnames(X2) = c('e1','e2','e3','e4')
rownames(X2) = c('d1','d2','d3','d4')
X2

# Resolverla tanto para situación favorable como desfavorable, con la función que devuelve la 
# resolución de todos los métodos en una única tabla
# ¿Qué ingrediente le recomendarías al chef para ambas situaciones?

