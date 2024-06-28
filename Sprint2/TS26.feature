Feature: Asignación de una Unidad de Bus

Scenario: Asignación exitosa de un bus a una ruta
Given que un planificador de Transport Company está en la sección de asignación de buses
When selecciona un bus disponible y lo asigna a una ruta específica
Then el sistema registra la asignación
And actualiza el estado del bus a "En servicio" para esa ruta

Scenario: Intento de asignación de un bus ya asignado
Given que un planificador intenta asignar un bus a una ruta
When selecciona un bus que ya está asignado a otra ruta
Then el sistema muestra una advertencia sobre la asignación actual del bus
And solicita confirmación antes de reasignar el bus a la nueva ruta

Scenario: Desasignación de un bus de una ruta
Given que un planificador necesita desasignar un bus de su ruta actual
When selecciona la opción de desasignar para un bus específico
Then el sistema elimina la asignación actual del bus
And actualiza el estado del bus a "Disponible"