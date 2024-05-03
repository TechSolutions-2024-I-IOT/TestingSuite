Feature: Navegación y Contenido Informativo en el Footer

    Scenario: Acceso a información relevante en el footer
        Given que el visitante se encuentra en cualquier página del sitio web
        When el visitante desplaza hacia abajo hasta el footer
        Then el visitante encuentra información relevante y enlaces útiles claramente organizados y visibles.

    Scenario: Enlaces a secciones importantes en el footer
        Given que el visitante está en el footer
        When el visitante busca enlaces a secciones importantes como "Inicio", "Nosotros" y "Contacto"
        Then el visitante encuentra estos enlaces de forma clara y directa.

    Scenario: Acceso rápido a redes sociales
        Given que el visitante está en el footer del sitio web
        When el visitante selecciona algún ícono de las redes sociales disponibles de ChapaTuBus
        Then el visitante es redirigido a la red social elegida