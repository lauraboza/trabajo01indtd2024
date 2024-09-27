## ENUNCIADO CON SOLUCIONES TAREA 1

source("teoriadecision_funciones_incertidumbre.R")

# PROBLEMA 1

# Sea la tabla de decisión con 5 estados de la naturaleza y 4 alternativas de la siguiente 
# forma:

X1 = matrix(c(5,4,6,2,3,1,7,8,7,5,2,0,8,9,5,4,3,-1,9,10),nrow=4,ncol=5,byrow=TRUE)
colnames(X1)=c('e1','e2','e3','e4','e5')
rownames(X1)=c('d1','d2','d3','d4')
X1

# Resolverla tanto para situación favorable como desfavorable, con cada uno de los 
# criterios por separado

tb = crea.tablaX(c(5,4,6,2,3,
                    1,7,8,7,5,
                    2,0,8,9,5,
                    4,3,-1,9,10), numalternativas = 4, numestados = 5)


# Situación favorable:
p1_wald = criterio.Wald(tb, T)
(p1_wald$AlternativaOptima)  # Alternativa 1

p1_opt = criterio.Optimista(tb, T)
(p1_opt$AlternativaOptima)   # Alternativa 4

p1_hur = criterio.Hurwicz(tb, 0.4, T)
(p1_hur$AlternativaOptima)   # Alternativa 2

p1_hurg = criterio.Hurwicz.General(tb, 0.4, T)
(p1_hurg$AlternativaOptima)   # Alternativa 2

dibuja.criterio.Hurwicz(tb, T)
dibuja.criterio.Hurwicz_Intervalos(tb, T, T)
#               Intervalo      Alternativa
# Soluciones  "( 0 , 0.333 )"     "1"        
#            "( 0.333 , 0.5 )"    "2"        
#              "( 0.5 , 1 )"      "4" 

p1_sav = criterio.Savage(tb, T)
(p1_sav$AlternativaOptima)   # Alternativa 2

p1_lap = criterio.Laplace(tb, T)
(p1_lap$AlternativaOptima)   # Alternativa 2

p1_pid = criterio.PuntoIdeal(tb, T)
(p1_pid$AlternativaOptima)   # Alternativa 2


# Situación desfavorable:
p1d_wald = criterio.Wald(tb, F)
(p1d_wald$AlternativaOptima)  # Alternativa 1

p1d_opt = criterio.Optimista(tb, F)
(p1d_opt$AlternativaOptima)   # Alternativa 4

p1d_hur = criterio.Hurwicz(tb, 0.4, F)
(p1d_hur$AlternativaOptima)   # Alternativa 1

p1d_hurg = criterio.Hurwicz.General(tb, 0.4, F)
(p1d_hurg$AlternativaOptima)   # Alternativa 1

dibuja.criterio.Hurwicz(tb, F)
dibuja.criterio.Hurwicz_Intervalos(tb, F, T)
#               Intervalo      Alternativa
# Soluciones  "( 0 , 0.571 )"     "1"        
#             "( 0.571 , 1 )"     "4"        

p1d_sav = criterio.Savage(tb, F)
(p1d_sav$AlternativaOptima)   # Alternativa 1 y 4

p1d_lap = criterio.Laplace(tb, F)
(p1d_lap$AlternativaOptima)   # Alternativa 1

p1d_pid = criterio.PuntoIdeal(tb, F)
(p1d_pid$AlternativaOptima)   # Alternativa 1



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

# Resolverla con la función que devuelve la resolución de todos los métodos en una única tabla
# ¿Qué ingrediente le recomendarías al chef?

tb = crea.tablaX(c(45,30,25,50,
                   35,20,30,40,
                   25,15,20,35,
                   50,40,30,60), numalternativas = 4, numestados = 4)

p2_todos = criterio.Todos(tb, 0.4, F)
p2_todos
#                    e1 e2 e3 e4 Wald Optimista Hurwicz Savage Laplace Punto Ideal
# d1                 45 30 25 50   50        25      40     20   37.50       29.58
# d2                 35 20 30 40   40        20      32     10   31.25       15.81
# d3                 25 15 20 35   35        15      27      0   23.75        0.00
# d4                 50 40 30 60   60        30      48     25   45.00       44.44
# iAlt.Opt (Desfav.) -- -- -- --   d3        d3      d3     d3      d3          d3

# Luego al chef le recomendaría usar el champiñón, ya que el tiempo de preparación es 
# más corto.



