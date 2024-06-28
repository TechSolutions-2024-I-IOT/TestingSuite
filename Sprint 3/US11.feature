Feature: Visualización de métricas de ocupación y capacidad de unidades de buses

Scenario: Visualización correcta de datos
Given que la empresa de transporte público ha iniciado sesión en la aplicación
And selecciona la opción "Visualizar paradas con mayor afluencia"
When la aplicación carga la información de las paradas
Then se muestra información detallada sobre la afluencia en diferentes momentos del día

Scenario: Filtrado de paradas
Given que la empresa de transporte público desea ver solo las paradas con mayor afluencia en un horario específico
When la empresa de transporte público selecciona un filtro de horario
Then la información detallada de las paradas se actualiza para mostrar solo la información del horario seleccionado