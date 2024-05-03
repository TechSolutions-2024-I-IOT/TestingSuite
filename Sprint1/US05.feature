Feature: Sección de Preguntas Frecuentes

    Scenario: Navegación a la sección de Preguntas Frecuentes
        Given que el visitante se encuentra en la página principal de la Landing Page
        When el visitante se desplaza hasta la sección de Preguntas Frecuentes
        Then el visitante encuentra la sección de Preguntas Frecuentes.

    Scenario: Acceso a preguntas y respuestas específicas
        Given que el visitante se encuentra en la sección de Preguntas Frecuentes
        When el visitante selecciona una pregunta de la lista
        Then se despliega la respuesta correspondiente de manera clara y concisa.