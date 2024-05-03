Feature: Envío de mensaje a través de un formulario de contacto

    Scenario: Enviar el formulario con los campos correctamentes llenados
        Given que el visitante ha completado los campos de nombre,apellido,correo electrónico y mensaje correctamente
        When los campos son validados
        And el visitante ordena enviar el formulario
        Then el formulario es enviado correctamente al correo electrónico de ChapaTuBus

    Scenario: Enviar el formulario con un correo electrónico no válido
        Given El visitante se encuentra en el formulario de contacto
        And ingresa un formato de coreo electrónico no válido
        When el correo electrónico es revisado
        And el visitante ordena enviar el formulario
        Then el formulario no es enviado
        And se le muestra un mensaje de error indicando que el correo electrónico no es válido

    Scenario: Envío fallido por campos incompletos en el formulario
        Given que el visitante se encuentra en la sección de contacto de la landing page
        When el visitante completa parcialmente los campos requeridos en el formulario de contacto
        And ordena enviar el formulario
        Then se muestra un mensaje de error indicando los campos que aún necesitan ser completados

    Scenario: Envío del formulario con información vacía
        Given que el visitante se encuentra en la sección de contacto de la landing page
        When el visitante deja en blanco uno o más campos del formulario de contacto
        And ordena enviar el formulario
        Then se muestra un mensaje de error indicando que debe rellenar los campos vacíos

    Scenario: Redirección a otra sección tras el envío exitoso
        Given que el visitante ha enviado con éxito el formulario de contacto
        When el visitante recibe la confirmación del envío exitoso
        Then es redirigido automáticamente a una página de agradecimiento o a otra sección relevante de la landing page