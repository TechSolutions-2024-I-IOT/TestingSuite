Feature: Enviar la información recopilada en los dispositivos IoT hacia el Gateway

Scenario: Envío de Video desde Cámaras IoT al Gateway
Given que se recopila video en tiempo real de cámaras IoT instaladas en estaciones y vehículos del transporte público
When los datos de video se formatean en formato MPEG-4 y se envían al Gateway utilizando el protocolo RTSP
Then el Gateway recibe los datos de video y los procesa para su almacenamiento o visualización en el sistema central

Scenario: Envío de Datos de Ritmo Cardíaco desde Pulsómetros IoT al Gateway
Given que se recopila video en tiempo real de cámaras IoT instaladas en estaciones y vehículos del transporte público
When los datos de video se formatean en formato MPEG-4 y se envían al Gateway utilizando el protocolo RTSP
Then el Gateway recibe los datos de video y los procesa para su almacenamiento o visualización en el sistema central

Scenario: Verificación de Recepción de Datos en el Gateway
Given que se envían datos desde dispositivos IoT al Gateway utilizando el protocolo CoAP
When los datos se envían correctamente desde un dispositivo IoT
Then el Gateway envía una confirmación de recepción al dispositivo emisor, junto con un código de estado 200 OK para indicar una recepción exitosa

Scenario: Gestión de Errores de Envío de Datos
Given que un dispositivo IoT intenta enviar datos al Gateway, pero hay un problema de conexión
When se realiza un intento de envío de datos desde el dispositivo
Then el Gateway devuelve un código de estado 503 Service Unavailable para indicar que el servicio no está disponible temporalmente
And el dispositivo IoT intenta enviar los datos nuevamente después de un intervalo de tiempo predeterminado