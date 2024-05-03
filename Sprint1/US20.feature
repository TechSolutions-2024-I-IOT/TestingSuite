Feature: Registrar línea de transporte

    Scenario: Registro correcto de la línea de transporte
        Given que un representante de la empresa de transporte ha iniciado sesión en el sistema
        And ha seleccionado la opción "Registrar línea de transporte"
        When el representante introduce la información completa y válida de la línea de transporte en el formulario de registro
        Then se valida la información
        And se crea una entrada para la línea de transporte en el sistema
        And se informa al representante del éxito del registro

    Scenario: Error al registrar la línea de transporte
        Given que un representante introduce información incompleta o inválida en el formulario de registro
        When el sistema detecta un error en la información proporcionada
        Then se muestra un mensaje informativo al representante indicando el error y cómo corregirlo
        And se ofrece al representante la opción de volver a intentar registrar la línea de transporte

    Scenario: Validación de datos
        Given que el sistema necesita verificar la información de la línea de transporte
        When el representante ingresa la información de la línea de transporte en el formulario de registro
        Then el sistema valida la información en tiempo real mediante solicitud de documentación adicional (ej. permisos de operación)
        And se informa al representante el estado de la validación

    Scenario: Configuración de la línea de transporte
        Given que la línea de transporte ha completado el registro
        When el representante accede a la configuración de la línea de transporte
        Then la empresa puede configurar la información de la línea de transporte, como nombre de la línea, ruta, horario de servicio, tarifas y paradas