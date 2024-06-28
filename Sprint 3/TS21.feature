Feature: Visualizar ubicación de la flota en tiempo real

Scenario: Visualización correcta de la ubicación
Given que la empresa de transporte público ha iniciado sesión en la aplicación
And selecciona la opción "Visualizar ubicación en tiempo real"
When la aplicación carga la información de la ubicación
Then se muestra un mapa con los buses representados por íconos, donde cada ícono indica la ubicación actual del bus

Scenario: Seguimiento de un bus
Given que la empresa de transporte público desea seguir el recorrido de un bus específico
When selecciona la opción "Seguir un bus"
Then el mapa se centra en el bus seleccionado y se actualiza en tiempo real