Feature: Registrar empresa de transporte

    Scenario: Registro correcto de la empresa
        Given que un representante de la empresa de transporte ha accedido al portal de registro del sistema
        When el representante introduce la información completa y válida de la empresa en el formulario de registro
        Then se valida la información de la empresa en tiempo real (ej. mediante consulta a bases de datos públicas)
        And se crea una cuenta para la empresa en el sistema

    Scenario: Error al registrar la empresa
        Given que un representante introduce información incompleta o inválida en el formulario de registro
        When el sistema detecta un error en la información proporcionada
        Then se muestra un mensaje informativo al representante indicando el error y cómo corregirlo
        And se ofrece al representante la opción de volver a intentar registrar la empresa
