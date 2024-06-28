Feature: Listado de Drivers Asociados de un Transport Company

Scenario: Visualización del listado de conductores
Given que un administrador de Transport Company está autenticado
When accede a la sección "Listado de Conductores"
Then el sistema muestra una lista con todos los conductores asociados a la empresa
And incluye detalles como nombre, ID, estado y ruta asignada actual

Scenario: Filtrado de conductores por disponibilidad
Given que un administrador está viendo el listado de conductores
When aplica un filtro de disponibilidad (disponible, en ruta, en descanso)
Then el sistema actualiza la lista mostrando solo los conductores que cumplen con el filtro
And muestra el número total de conductores en cada estado

Scenario: Visualización de detalles de un conductor
Given que un administrador está revisando el listado de conductores
When hace clic en un conductor específico
Then el sistema muestra una vista detallada con toda la información del conductor
And incluye su historial de asignaciones y rendimiento