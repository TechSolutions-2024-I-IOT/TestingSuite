Feature: Implementación de Sensor de procesados

Scenario: Consulta de la línea del bus
Dado que el usuario quiere conocer la ruta del bus
Cuando ingresé el nombre de una línea de autobús
Entonces ve los detalles de la línea del bus, incluyendo paraderos y horario, considerando su ubicación y una dirección de ruta por defecto se mostrará el paradero del bus más cercano.

Scenario: Consulta de líneas cercanas
Dado que el usuario quiere ver las rutas de los buses cercanos sin tener un destino fijo
Cuando quiera verlos, serán recomendados considerando su ubicación
Entonces se mostrarán las rutas de los buses que pasen cerca de su posición actual

Scenario: Dirección equivocada
Dado que la aplicación asumió el sentido contrario al destino del usuario pasajero al mostrar los paraderos
Cuando cambie la dirección de los paraderos
Entonces la aplicación le mostrará el bus correspondiente a la dirección que desea