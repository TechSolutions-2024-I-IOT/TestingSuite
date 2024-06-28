Feature: Recibir notificaciones

Scenario: Recepción correcta de notificaciones
Given que la empresa de transporte público ha iniciado sesión en la aplicación
And ha activado las notificaciones
When se produce un evento relevante (ej. retraso de un bus, accidente, parada no programada)
Then la empresa de transporte público recibe una notificación en tiempo real en la aplicación con el tipo de evento, la ubicación, la hora e información adicional

Scenario: Personalización de notificaciones
Given que la empresa de transporte público desea personalizar las notificaciones que recibe
When selecciona la opción "Personalizar Notificaciones"
Then la empresa de transporte público puede elegir qué tipos de eventos quiere recibir notificaciones (ej. solo retrasos, solo accidentes)
And puede elegir cómo quiere recibir las notificaciones (ej. en la aplicación, por correo electrónico, por SMS)