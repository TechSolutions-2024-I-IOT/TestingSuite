Feature: Visualizar aforo en buses

Scenario: Visualización correcta del aforo
Given que la empresa de transporte público ha iniciado sesión en la aplicación
And selecciona la opción "Visualizar aforo"
When la aplicación carga la información del aforo
Then al seleccionar un bus se muestra información detallada sobre la cantidad de personas a bordo en tiempo real

Scenario: Filtrado de buses
Given que la empresa de transporte público desea ver solo los buses con mayor cantidad de personas a bordo en una ruta específica
When selecciona un filtro de ruta
Then la información detallada de los buses también se actualiza para mostrar solo la información de la ruta seleccionada