Feature: Creación de Itinerario

Scenario: Creación exitosa de un nuevo itinerario
Given que un planificador de rutas está autenticado en el sistema
When crea un nuevo itinerario especificando origen, destino y paradas intermedias
Then el sistema registra el nuevo itinerario
And muestra una vista previa del itinerario creado

Scenario: Modificación de un itinerario existente
Given que un planificador selecciona un itinerario existente
When realiza cambios en las paradas o el orden de estas
Then el sistema actualiza el itinerario con los cambios
And notifica a los usuarios afectados por los cambios en el itinerario

Scenario: Validación de tiempos entre paradas
Given que un planificador está creando o modificando un itinerario
When ingresa los tiempos estimados entre paradas
Then el sistema verifica que los tiempos sean realistas y factibles
And alerta al planificador si detecta tiempos poco probables o imposibles