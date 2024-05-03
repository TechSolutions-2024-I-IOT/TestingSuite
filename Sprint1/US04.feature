Feature: Conocimiento del Equipo desarrollador de la aplicación

    Scenario: Navegación a la sección de "Nuestro Equipo"
        Given que el visitante se encuentra en la página principal de la Landing Page
        When el visitante se desplaza hasta la sección de "Nuestro Equipo"
        Then el visitante visualiza al equipo colaborador del proyecto.