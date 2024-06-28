Feature: Listado de Drivers Asociados de la empresa

Scenario: Visualización del listado completo de conductores
Given que un administrador de Transport Company está autenticado
When accede a la sección de "Listado de Conductores"
Then el sistema muestra una lista con todos los conductores asociados a la empresa
And incluye detalles como nombre, ID, estado y última asignación

Scenario: Filtrado de conductores por estado
Given que un administrador está viendo el listado de conductores
When aplica un filtro por estado (activo, inactivo, en descanso)
Then el sistema actualiza la lista mostrando solo los conductores que cumplen con el filtro
And muestra el número total de conductores en ese estado

Scenario: Búsqueda de un conductor específico
Given que un administrador necesita encontrar a un conductor en particular
When ingresa el nombre o ID del conductor en el campo de búsqueda
Then el sistema muestra los resultados que coinciden con la búsqueda
And permite acceder a los detalles completos del conductor seleccionado