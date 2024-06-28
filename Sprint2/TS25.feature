Feature: Listado de Buses Asociados de un Transport Company

Scenario: Visualización del listado completo de buses
Given que un administrador de Transport Company está autenticado
When accede a la sección "Listado de Buses"
Then el sistema muestra una lista con todos los buses asociados a la empresa
And incluye detalles como número de bus, modelo, capacidad y estado actual

Scenario: Filtrado de buses por estado
Given que un administrador está viendo el listado de buses
When aplica un filtro por estado (en servicio, en mantenimiento, fuera de servicio)
Then el sistema actualiza la lista mostrando solo los buses que cumplen con el filtro seleccionado
And muestra el número total de buses en ese estado

Scenario: Ordenamiento de la lista de buses
Given que un administrador está visualizando el listado de buses
When selecciona una opción de ordenamiento (por número, por capacidad, por antigüedad)
Then el sistema reordena la lista de buses según el criterio seleccionado
And mantiene el orden en las subsiguientes navegaciones por la lista