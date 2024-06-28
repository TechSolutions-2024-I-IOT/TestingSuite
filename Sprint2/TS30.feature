Feature: Registro de una salida (Departure Schedule) asociada con un UnitBus en el 

Scenario: Registro exitoso de una nueva salida
Given que un planificador de Transport Company está en la sección de registro de salidas
When selecciona un horario, una unidad de bus disponible y especifica la hora de salida
Then el sistema registra la nueva salida y la asocia con el horario y la unidad de bus
And muestra una confirmación con los detalles de la salida registrada

Scenario: Intento de registro de salida con unidad de bus no disponible
Given que un planificador está registrando una nueva salida
When selecciona una unidad de bus que ya está asignada a otra salida en el mismo horario
Then el sistema muestra un mensaje de advertencia sobre la no disponibilidad del bus
And sugiere unidades de bus alternativas que estén disponibles

Scenario: Modificación de una salida programada
Given que un planificador necesita cambiar los detalles de una salida ya programada
When selecciona una salida existente y modifica la hora o la unidad de bus asignada
Then el sistema actualiza la información de la salida
And notifica a los conductores y personal relevante sobre el cambio en la programación