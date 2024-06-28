Feature: Visualizar recorrido de una línea de bus

Scenario: Consulta de la línea del bus
Given que el usuario quiere conocer la ruta del bus
When ingrese el nombre de una línea de autobús
Then ve los detalles de la línea del bus, incluyendo paraderos y horario
And considerando su ubicación y una dirección de ruta por defecto se mostrará el paradero del bus más cercano

Scenario: Consulta de líneas cercanas
Given que el usuario quiere ver las rutas de los buses cercanos sin tener un destino fijo
When quiera verlos, serán recomendados considerando su ubicación
Then se mostrarán las rutas de los buses que pasen cerca de su posición actual

Scenario: Dirección equivocada
Given que la aplicación asumió el sentido contrario al destino del usuario pasajero al mostrar los paraderos
When cambie la dirección de los paraderos
Then la aplicación le mostrará el bus correspondiente a la dirección que desea