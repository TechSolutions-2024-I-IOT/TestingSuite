Feature: Visualizar estado de los conductores

Scenario: Visualización correcta del estado
Given que la empresa de transporte público ha iniciado sesión en la aplicación
And selecciona la opción "Visualizar estado de conductor"
When la aplicación carga la información del estado de los conductores
Then se muestra una lista con los conductores y su estado actual

Scenario: Visualizar estado detallado
Given que la empresa de transporte público selecciona un conductor
When la aplicación carga la información del estado del conductor seleccionado
Then se muestra información detallada sobre su estado como ubicación, nivel de fatiga, estado de ánimo, entre otros