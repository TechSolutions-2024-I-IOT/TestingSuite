Feature: Conectar la información con el backend

Scenario: Obtención Exitosa de Datos desde la Plataforma en la Nube al Backend
Given que el backend del sistema necesita obtener datos almacenados en la plataforma en la nube
When se establece una conexión con la plataforma en la nube utilizando el protocolo HTTPS y se envían solicitudes para obtener los datos requeridos
Then la plataforma en la nube responde con los datos solicitados, y el backend del sistema los recibe correctamente para su procesamiento
And se devuelve un código de estado HTTP 200 OK

Scenario: Falla en la Conexión con la Plataforma en la Nube
Given que el backend del sistema intenta obtener datos de la plataforma en la nube
When durante el proceso de conexión, se produce un error de red o la plataforma en la nube no responde
Then el backend del sistema no puede establecer la conexión con la plataforma en la nube y recibe un código de error HTTP 503 Service